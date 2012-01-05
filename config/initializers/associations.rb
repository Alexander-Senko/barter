class ActiveRecord::Base
	def self.inherited child
		ActiveSupport.run_load_hooks :model_class, child
	end

	protected

	def self.setup_relation target, type, role = nil
		unless (through_association = "#{type}_relations".to_sym).in? reflections then
			has_many through_association, :as => ([ :source, :target ] - [ type ]).first, :class_name => 'Relation'
		end

		with_options({
			:through     => through_association,
			:source      => type,
			:source_type => target.base_class.name,
			:class_name  => target.name,
		}) do |model|
			association = if target == self then
				type == :target ? 'child' : 'parent'
			else
				target.name.split('::').reverse.join
			end.tableize.to_sym

			unless association.in? reflections then
				model.has_many                association
				define_association_with_roles association
			end

			if role then
				association_with_role = if target == self || target <= User then # TODO: DRY!
					type == :target ? "#{role.name.passivize}_#{target.name.split('::').reverse.join}" : role.name
				else
					"#{type == :target ? role.name.passivize : role.name}_#{association}"
				end.tableize.to_sym

				model.has_many association_with_role, :conditions => { through_association => { :role_id => role.id } }
			end
		end
	end

	private

	def self.define_association_with_roles association
		redefine_method "#{association}_with_roles" do |*roles|
			send(association).where(
				:relations => {
					:role_id => Role.find_all_by_name(roles.flatten.map(&:to_s)).map(&:id)
				}
			)
		end
	end
end


ActiveSupport.on_load :model_class do
	for type in [ :source, :target ] do
		for relation in Relation.where({ "#{([ :source, :target ] - [ type ]).first}_type" => self,
			:source_id => nil,
			:target_id => nil,
		}).select(&"#{type}_type".to_sym) do
			setup_relation relation.send("#{type}_type").constantize, type, relation.role
		end
	end if Relation.table_exists? # needed for DB migrations & schema initializing
end


##
# TODO: improve & separate
#
class String
	def passivize
		sub(/(e?d?|[eo]r|ant)$/, 'ed')
	end unless method_defined? :passivize
end

class APIController < InheritedResources::Base
	respond_to :html, :xml, :json

	load_and_authorize_resource :except => :index

	# Pagination
	has_scope :page, :default => 1
	has_scope :per

	def self.inherited child
		super
		child.resources_configuration.delete :self
		child.send :initialize_resources_class_accessors!
		child.send :create_resources_url_helpers!
	end

	protected

	def collection
		get_collection_ivar || set_collection_ivar(
			end_of_association_chain.accessible_by(
				current_ability, :index
			)
		)
	end
end

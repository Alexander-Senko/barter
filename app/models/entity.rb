class Entity < ActiveRecord::Base
	has_many  :child_relations, :as => :target, :class_name => 'Relation'
	has_many :parent_relations, :as => :source, :class_name => 'Relation'

	has_many :children, :through =>  :child_relations, :source => :source, :source_type => 'Entity'
	has_many :parents,  :through => :parent_relations, :source => :target, :source_type => 'Entity'

	has_many :users,    :through =>  :child_relations, :source => :source, :source_type => 'User'
	has_many :owners,   :through => :parent_relations, :source => :target, :source_type => 'User'

	def self.inherited child
		has_many child.name.downcase.pluralize,
			:through => :child_relations, :source => :source, :source_type => child.name

		super
	end

	# Using polymorphic associations in combination with single table inheritance (STI) is
	# a little tricky. In order for the associations to work as expected, ensure that you
	# store the base model for the STI models in the type column of the polymorphic
	# association.
	for reflection in reflections.values.select { |r| r.options[:polymorphic] } do
		define_method "#{reflection.name}_type=" do |type|
			super type && type.to_s.classify.constantize.base_class.to_s
		end
	end
end

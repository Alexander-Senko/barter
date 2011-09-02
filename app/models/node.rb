class Node < ActiveRecord::Base
	has_many  :child_memberships, :as => :team,   :class_name => 'Membership'
	has_many :parent_memberships, :as => :member, :class_name => 'Membership'

	has_many :children, :through =>  :child_memberships, :source => :member, :source_type => 'Node'
	has_many :parents,  :through => :parent_memberships, :source => :team,   :source_type => 'Node'

	has_many :users,    :through =>  :child_memberships, :source => :member, :source_type => 'User'
	has_many :owners,   :through => :parent_memberships, :source => :team,   :source_type => 'User'

	def self.inherited child
		has_many child.name.downcase.pluralize,
			:through => :child_memberships, :source => :member, :source_type => child.name

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

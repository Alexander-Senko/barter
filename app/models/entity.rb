class Entity < ActiveRecord::Base
	define_index do
		indexes :name, :sortable => true
		indexes summary
		indexes content

		has created_at, updated_at

		set_property :field_weights => {
			:name    => 10,
			:summary =>  8,
			:content =>  5,
		}
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

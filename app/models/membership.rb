class Membership < ActiveRecord::Base
	belongs_to :member, :polymorphic => true
	belongs_to :team,   :polymorphic => true
	belongs_to :role

	scope :in, lambda { |team|
		where({
			:member_id => nil,
		}.merge case team
		when :general then {
			:team_type => nil,
			:team_id   => nil,
		} when Class then {
			:team_type => team.name,
			:team_id   => nil,
		} else {
			:team_type => team.class.name,
			:team_id   => team.id,
		} end).includes(:role)
	}

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

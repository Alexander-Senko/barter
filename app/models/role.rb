class Role < ActiveRecord::Base
	has_many :memberships
	has_many :users, :through => :memberships, :source => :member, :source_type => 'User'

	validates :name, :uniqueness => true

	scope :named, lambda { |*names| where :name.in => names.flatten }

	# TODO: make DRY with Membership.in
	scope :in, lambda { |team|
		joins(:memberships).where(:memberships => {
			:member_id => nil,
		}.merge(case team
		when :general then {
			:team_type => nil,
			:team_id   => nil,
		} when Class then {
			:team_type => team.name,
			:team_id   => nil,
		} else {
			:team_type => team.class.name,
			:team_id   => team.id,
		} end))
	}
end

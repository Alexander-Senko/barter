# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#
# Roles
#

for (team, member), roles in {
	[ nil, User::Staff ] => %w[
		admin
		editor
		moderator
		accountant
		support
	],
	[ nil, User::Customer ] => %w[
	],
	[ nil, User::Corporate ] => %w[
	],
} do
	if roles.any? then
		for role in roles do
			Membership.create :role => Role.find_or_create_by_name(role) do |m|
				m.send :write_attribute, :member_type, member.to_s if member
				m.send :write_attribute, :team_type,     team.to_s if team
			end
		end
	else
		Membership.create do |m|
			m.send :write_attribute, :member_type, member.to_s if member
			m.send :write_attribute, :team_type,     team.to_s if team
		end
	end
end

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

for (source, target), roles in {
	# Global user roles
	User::Staff => %w[
		admin
		editor
		moderator
		accountant
		support
	],
	User::Customer => %w[
	],
	User::Corporate => %w[
	],

	# Per-entity user roles
	[ User, Entity ] => %w[
		creator
		editor
	],
	[ User::Staff, Entity ] => %w[
		admin
		moderator
	],
	[ User::Customer, Item ] => %w[
		provider
		demander
	],

	# Entity relations
	[ Entity, Entity ] => %w[
	],
	[ Article, Article ] => %w[
		specifier
		package
	],
	[ Item, Article ] => %w[
	],
} do
	if roles.any? then
		for role in roles do
			Relation.create :role => Role.find_or_create_by_name(role) do |m|
				m.send :write_attribute, :source_type, source.to_s if source
				m.send :write_attribute, :target_type, target.to_s if target
			end
		end
	else
		Relation.create do |m|
			m.send :write_attribute, :source_type, source.to_s if source
			m.send :write_attribute, :target_type, target.to_s if target
		end
	end
end

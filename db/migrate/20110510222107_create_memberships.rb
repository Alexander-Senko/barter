class CreateMemberships < ActiveRecord::Migration
	def change
		create_table :memberships do |t|
			t.references :member, :polymorphic => { :default => 'User' }
			t.references :team,   :polymorphic => true
			t.references :role

			t.timestamps
		end

		add_index :memberships, [ :member_id, :member_type, :team_id, :team_type, :role_id ], :unique => true,
		          :name => 'index_memberships_on_member_and_team_and_role'
	end
end

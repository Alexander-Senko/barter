class CreateNodes < ActiveRecord::Migration
	def change
		create_table :nodes do |t|
			t.string :type

			t.string :name
			t.string :summary
			t.text   :content

			t.datetime :starts_at, :ends_at

			t.timestamps
		end

		add_index :nodes, :type
		add_index :nodes, [ :starts_at, :ends_at ]
	end
end

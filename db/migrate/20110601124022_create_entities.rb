class CreateEntities < ActiveRecord::Migration
	def change
		create_table :entities do |t|
			t.string :type

			t.string :name
			t.string :summary
			t.text   :content

			t.datetime :starts_at, :ends_at

			t.timestamps
		end

		add_index :entities, :type
		add_index :entities, [ :starts_at, :ends_at ]
	end
end

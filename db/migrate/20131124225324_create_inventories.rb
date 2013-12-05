class CreateInventories < ActiveRecord::Migration
    def change
        create_table :inventories do |t|
          t.belongs_to :user
          t.integer :max_cap
          t.integer :current_cap

          t.timestamps
        end
    end
end

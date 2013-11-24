class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.integer :item_id
      t.integer :user_id
      t.integer :max_cap
      t.integer :current_cap

      t.timestamps
    end
  end
end

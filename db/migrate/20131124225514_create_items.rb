class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :short_desc
      t.text :long_desc
      t.integer :connection_id
      t.integer :inventory_id
      t.integer :room_id
      t.boolean :takeable
      t.boolean :useable
      t.boolean :openable

      t.timestamps
    end
  end
end

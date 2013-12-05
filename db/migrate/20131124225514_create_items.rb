class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :short_desc
      t.text :long_desc
      t.integer :connection_id
      t.belongs_to :inventory
      t.belongs_to :room
      t.boolean :takeable
      t.boolean :taken
      t.boolean :useable
      t.boolean :used
      t.boolean :openable
      t.boolean :opened

      t.timestamps
    end
  end
end

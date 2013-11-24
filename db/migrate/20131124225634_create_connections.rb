class CreateConnections < ActiveRecord::Migration
  def change
    create_table :connections do |t|
      t.string :direction
      t.integer :room_id
      t.boolean :traversable

      t.timestamps
    end
  end
end

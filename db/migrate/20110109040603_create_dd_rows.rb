class CreateDdRows < ActiveRecord::Migration
  def self.up
    create_table :dd_rows do |t|
      t.integer :dd_table_id

      t.timestamps
    end
    add_index :dd_rows, :dd_table_id
  end

  def self.down
    drop_table :dd_rows
  end
end

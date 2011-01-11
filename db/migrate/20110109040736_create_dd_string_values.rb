class CreateDdStringValues < ActiveRecord::Migration
  def self.up
    create_table :dd_string_values do |t|
      t.integer :dd_row_id
      t.integer :dd_string_column_id
      t.string :value

      t.timestamps
    end
    add_index :dd_string_values, :dd_row_id
    add_index :dd_string_values, :dd_string_column_id
  end

  def self.down
    drop_table :dd_string_values
  end
end

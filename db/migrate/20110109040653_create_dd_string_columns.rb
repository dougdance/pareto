class CreateDdStringColumns < ActiveRecord::Migration
  def self.up
    create_table :dd_string_columns do |t|
      t.integer :dd_table_id
      t.string :name

      t.timestamps
    end
    add_index :dd_string_columns, :dd_table_id
  end

  def self.down
    drop_table :dd_string_columns
  end
end

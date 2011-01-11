class CreateDdFkColumns < ActiveRecord::Migration
  def self.up
    create_table :dd_fk_columns do |t|
      t.integer :dd_table_id
      t.integer :dd_foreign_table_id
      t.string :name

      t.timestamps
    end
    add_index :dd_fk_columns, :dd_table_id
    add_index :dd_fk_columns, :dd_foreign_table_id
  end

  def self.down
    drop_table :dd_fk_columns
  end
end

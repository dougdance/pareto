class CreateDdFkValues < ActiveRecord::Migration
  def self.up
    create_table :dd_fk_values do |t|
      t.integer :dd_row_id
      t.integer :dd_fk_column_id
      t.string :value

      t.timestamps
    end
    add_index :dd_fk_values, :dd_row_id
    add_index :dd_fk_values, :dd_fk_column_id
  end

  def self.down
    drop_table :dd_fk_values
  end
end

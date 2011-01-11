class CreateDdTables < ActiveRecord::Migration
  def self.up
    create_table :dd_tables do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :dd_tables
  end
end

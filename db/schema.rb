# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110109040935) do

  create_table "dd_fk_columns", :force => true do |t|
    t.integer  "dd_table_id"
    t.integer  "dd_foreign_table_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dd_fk_columns", ["dd_foreign_table_id"], :name => "index_dd_fk_columns_on_dd_foreign_table_id"
  add_index "dd_fk_columns", ["dd_table_id"], :name => "index_dd_fk_columns_on_dd_table_id"

  create_table "dd_fk_values", :force => true do |t|
    t.integer  "dd_row_id"
    t.integer  "dd_fk_column_id"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dd_fk_values", ["dd_fk_column_id"], :name => "index_dd_fk_values_on_dd_fk_column_id"
  add_index "dd_fk_values", ["dd_row_id"], :name => "index_dd_fk_values_on_dd_row_id"

  create_table "dd_rows", :force => true do |t|
    t.integer  "dd_table_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dd_rows", ["dd_table_id"], :name => "index_dd_rows_on_dd_table_id"

  create_table "dd_string_columns", :force => true do |t|
    t.integer  "dd_table_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dd_string_columns", ["dd_table_id"], :name => "index_dd_string_columns_on_dd_table_id"

  create_table "dd_string_values", :force => true do |t|
    t.integer  "dd_row_id"
    t.integer  "dd_string_column_id"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dd_string_values", ["dd_row_id"], :name => "index_dd_string_values_on_dd_row_id"
  add_index "dd_string_values", ["dd_string_column_id"], :name => "index_dd_string_values_on_dd_string_column_id"

  create_table "dd_tables", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

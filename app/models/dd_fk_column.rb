class DdFkColumn < ActiveRecord::Base
  belongs_to :dd_table
  belongs_to :dd_foreign_table, :className => "dd_table"
end

class DdTable < ActiveRecord::Base
  has_many :dd_row
  has_many :dd_string_column
  has_many :dd_fk_column
end

class DdTable < ActiveRecord::Base
  has_many :dd_rows, :include => [:dd_string_values]
  has_many :dd_string_columns
  has_many :dd_fk_columns
  #has_many :dd_string_values, :through => :dd_rows

end

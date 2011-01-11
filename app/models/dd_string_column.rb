class DdStringColumn < ActiveRecord::Base
  belongs_to :dd_table
  has_many :dd_string_value
end

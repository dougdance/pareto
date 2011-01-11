class DdRow < ActiveRecord::Base
  belongs_to :dd_table
  has_many :dd_string_value
  has_many :dd_fk_value
end

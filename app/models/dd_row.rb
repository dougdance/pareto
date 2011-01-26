class DdRow < ActiveRecord::Base
  belongs_to :dd_table
  has_many :dd_string_values, :dependent => :destroy
  has_many :dd_fk_values

  accepts_nested_attributes_for :dd_string_values
end

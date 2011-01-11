class DdStringValue < ActiveRecord::Base
  belongs_to :dd_row
  belongs_to :dd_string_column
end

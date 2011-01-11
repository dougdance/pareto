class DdFkValue < ActiveRecord::Base
  belongs_to :dd_row
  belongs_to :dd_fk_column
end

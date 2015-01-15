class Stamp < ActiveRecord::Base

  belongs_to :types
  belongs_to :locations
  belongs_to :groupings


end

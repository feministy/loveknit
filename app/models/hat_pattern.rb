class HatPattern < ActiveRecord::Base
  belongs_to :pattern

  attr_accessible :title, :pattern, :needle, :yarn_weight, :gauge_row_inch, :gauge_per_inch, :circumference, :needle_id, :pattern_id, :yarn_weight_id

  validates_presence_of :title, :pattern_id, :needle_id, :yarn_weight_id, :gauge_per_inch, :gauge_row_inch, :circumference
  validates_uniqueness_of :pattern_id
end

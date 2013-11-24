class Connection < ActiveRecord::Base
  attr_accessible :direction, :room_id, :traversable
end

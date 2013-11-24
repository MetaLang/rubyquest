class Inventory < ActiveRecord::Base
  attr_accessible :current_cap, :item_id, :max_cap, :user_id
end

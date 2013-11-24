class Item < ActiveRecord::Base
  attr_accessible :connection_id, :inventory_id, :long_desc, :name, :openable, :room_id, :short_desc, :takeable, :useable
end

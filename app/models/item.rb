class Item < ActiveRecord::Base
  attr_accessible :connection_id, :inventory_id, :long_desc, :name, :openable, :opened, :room_id, :short_desc, :takeable, :taken, :useable, :used
  belongs_to :inventory
end

class Room < ActiveRecord::Base
  attr_accessible :enter_desc, :name
  has_many :items
  has_many :connections
end

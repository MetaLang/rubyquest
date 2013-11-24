class User < ActiveRecord::Base
  attr_accessible :email, :inventory_id, :password, :room_id, :session_id, :username
end

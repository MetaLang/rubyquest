class User < ActiveRecord::Base
  attr_accessible :email, :inventory_id, :password, :room_id, :session_id, :username
  has_one :inventory

  validates :password, 	:presence => true,
						:length => { 	:minimum => 5,
										:maximum => 12 }
  end
  validates :username, 	:presence => true, 
						:length => { 	:minimum => 2,
										:maximum => 12 }
  end
end
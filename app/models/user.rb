class User < ActiveRecord::Base
  attr_accessible :email, :inventory_id, :password, :room_id, :session_id, :username
  has_one :inventory

  validates_presence_of :email, :password, :username
  validates_format_of :email, :with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  validates_length_of :password, :username, :maximum => 12, :minimum => 3
  validates_uniqueness_of :email, :username,
	:message => " is already used"

end
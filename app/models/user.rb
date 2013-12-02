class User < ActiveRecord::Base
  attr_accessible :email, :inventory_id, :password, :room_id, :session_id, :username
  has_one :inventory
<<<<<<< HEAD

  validates_presence_of :email, :password, :username
  validates_format_of :email, :with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  validates_length_of :password, :username, :maximum => 12, :minimum => 3
  validates_uniqueness_of :email, :username,
	:message => " is already used"

end
=======
	before_save { self.email = email.downcase }
	before_create :create_remember_token
	
	def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end
	
	private

		def create_remember_token
			# Create the token.
			self.remember_token = User.encrypt(User.new_remember_token)
		end
end
>>>>>>> 5c9a398f73dc47f09b2888401b3a5a0d2da7513a

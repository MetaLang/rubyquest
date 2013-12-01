class User < ActiveRecord::Base
  attr_accessible :email, :inventory_id, :password, :room_id, :session_id, :username
  has_one :inventory
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

require 'bcrypt'
class User < ActiveRecord::Base
  has_merit

	has_many :posts, dependent: :destroy
	# attr_accessor :password_digest

	rewardable
	
	EMAIL_REGEX = /\A[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\z/i
	validates :username, :presence => true, :uniqueness => true, :length => { :in => 3..20}
	validates :email, :presence => :true, :uniqueness => true, :format => EMAIL_REGEX
	validates :password_digest, :presence => :true
	validates_length_of :password_digest, :in => 6..20, :on => create

	

	include BCrypt
	has_secure_password
	before_create { generate_token(:auth_token) }

	before_save :encrypt_password
	# after_save :clear_password

	def encrypt_password
		if password_digest.present?
			password_salt = BCrypt::Engine.generate_salt
			self.password_digest = BCrypt::Engine.hash_secret(password_digest, password_salt)
		end
	end

	# def clear_password
	# 	self.password_digest = nil
	# end

	def user_exists?
	    !User.find_by_email(email).nil? ? true : false
	end

	private
	def generate_token(column)
	    loop do
	      self[column] = SecureRandom.urlsafe_base64
	      break unless User.exists?(column => self[column])
	    end
	end

end


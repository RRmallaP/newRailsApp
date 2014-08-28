class User < ActiveRecord::Base

	before_save { email.downcase! }

	EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :username, :presence => true, uniqueness: { case_sensitive: false } , :length => { :in => 4..30 }
	validates :email, :presence => true, uniqueness: { case_sensitive: false }, :format => EMAIL_REGEX
	validates :password, length: { minimum: 6 } 
	has_secure_password

end

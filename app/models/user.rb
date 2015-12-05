class User < ActiveRecord::Base
	EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
	# has_many :post, :message, :blog, :owner
	validates :first_name, :last_name, presence: true, length:{minimum: 2}
	validates :email, presence: true, uniqueness:{case_sensitive: false}, format:{with: EMAIL_REGEX}
	before_save do 
		self.email.downcase!
		self.first_name.capitalize!
		self.last_name.capitalize!
	end
end

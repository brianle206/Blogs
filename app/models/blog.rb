class Blog < ActiveRecord::Base
	has_many :post
	has_many :owner
end

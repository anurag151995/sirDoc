class User < ApplicationRecord
	has_one :kyc_detail
	has_many :posts
	has_many :comments
end

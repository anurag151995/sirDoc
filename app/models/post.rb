class Post < ApplicationRecord
	belongs_to :user
	has_many :comments
	has_many :images, as: :imageable

	def post_ki_method
		
	end
end

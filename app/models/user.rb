class User < ApplicationRecord
	has_one :kyc_detail
	has_many :posts
	has_many :comments

	# validates :user_name, presence: {message: "presence"}, uniqueness: {message: "uniqueness"}

	validate :indian_mobile_no


	def user_ki_method 
		indian_mobile_no
	end
	# after_create :register_in_markating_module
	# after_update :register_in_markating_module
	#after_save :register_in_markating_module

	# def register_in_markating_module
	# 	Subscription.create(user_id: self.id)
	# end

	#before_create :uniq_user_name
	#before_update :uniq_user_name
	#before_save :uniq_user_name

	# def uniq_user_name
	# 	User.where(user_name: self.user_name).present?
	# end

	private

	def indian_mobile_no
		user_name.include?("+91")
	end
end

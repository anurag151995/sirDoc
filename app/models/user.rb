class User < ApplicationRecord
	has_one :kyc_detail
	has_many :posts
	has_many :comments

	#validates :user_name, presence: {message: "presence"}, uniqueness: {message: "uniqueness"}

	validate :indian_mobile_no
	#validates_format_of :user_name, :with =>  /\d[0-9]\)*\z/ , :message => "Only positive number without spaces are allowed"


	#after_create :register_in_markating_module
	#after_update :register_in_markating_module
	# after_save :register_in_markating_module

	# def register_in_markating_module
	# 	Subscription.create(user_id: id)
	# end

	#before_create :uniq_user_name
	#before_update :uniq_user_name
	before_save :uniq_user_name

	def uniq_user_name
		User.where(user_name: self.user_name).present?
		puts "user present"
	end


	private
	def indian_mobile_no
	  (user_name.include?("+91"))
	end
end
	  


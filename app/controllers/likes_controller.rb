class LikesController < ApplicationController


	def index
	end

	def create
		@post = Post.find(params[:post_id])
		if @post.likes.where(user_id: User.first.id).present?
			@post.likes.where(user_id: User.first.id).destroy_all
		else
			@post.likes.create(user_id: User.first.id)
		end
		respond_to do |format|
    		format.js
  		end
	end
end

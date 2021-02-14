class StripeWebhooksController < ApplicationController
	protect_from_forgery except: [:handle_request]

	def handle_request
		render json: {status: 200}
	end

  def sub_categories
  	@id = params[:id]
  	@sub_categories = SubCategory.where(category_id: params[:id])
  	# render json: {sub_categories: @sub_categories, id: @id, status: 200}
  end
end
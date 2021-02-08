class StripeWebhooksController < ApplicationController
	protect_from_forgery except: [:handle_request]

	def handle_request
		render json: {status: 200}
	end
end
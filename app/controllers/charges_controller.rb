class ChargesController < ApplicationController

	def create
		binding.pry
	 #  # Amount in cents
	 #  @amount = 500

	 #  customer = Stripe::Customer.create({
	 #    email: params[:stripeEmail],
	 #    source: params[:stripeToken],
	 #  })

	 #  charge = Stripe::Charge.create({
	 #    customer: customer.id,
	 #    amount: @amount,
	 #    description: 'Rails Stripe customer',
	 #    currency: 'usd',
	 #  })

	 #  Stripe::Subscription.create({
		#   customer: customer.id,
		#   items: [
		#     {price: 'price_1IHnH4EkWQ9slmzrU8lssEcq'},
		#   ],
		# })

		# rescue Stripe::CardError => e
		#   flash[:error] = e.message
		#   redirect_to new_charge_path
	end



  def sub_categories
  	binding.pry
  end
end

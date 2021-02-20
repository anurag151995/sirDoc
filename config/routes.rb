Rails.application.routes.draw do
  get 'welcome/index'
  root 'posts#index'
  resources :charges
  resources :likes
  resources :custom_charges
  resources :stripe_webhooks do
  	collection do
  		post :handle_request
  	end
    member do
      get :sub_categories
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

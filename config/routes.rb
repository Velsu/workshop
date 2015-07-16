Rails.application.routes.draw do

	devise_for :users
  resources :categories do
    resources :products do
      resources :reviews
    end
  end

  root 'categories#index'

  scope '/profiles' do
  	match ':id/', to: "profile_pages#show", as: "show_profile", via: [:get]
  end
end

Rails.application.routes.draw do
  resources :user_roles
  devise_for :users
  resources :cart_courses
  resources :carts
  resources :orders
  resources :courses
  resources :adresses
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

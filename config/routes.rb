Rails.application.routes.draw do
  get 'favourites/update'
  root 'posts#index'
  resources :posts
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

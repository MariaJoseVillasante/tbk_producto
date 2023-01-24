Rails.application.routes.draw do
  devise_for :usuarios
  devise_for :admins
  get 'home/index'
  root to: "home#index"
  resources :productos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

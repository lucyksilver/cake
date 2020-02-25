Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :items do
    resources :orders, only: [:new, :create]
  end

  resources :users, only: [:show]
  resources :orders, only: [:destroy]

  get "/profile", to: 'pages#profile'
end

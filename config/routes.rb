Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :items, except: :destroy do
    resources :orders, only: [:new, :create, :show]
  end

  resources :users, only: [:show, :edit, :update]
  resources :orders, only: :destroy, as: 'order_delete'
  resources :items, only: :destroy, as: 'item_delete'

  get "/profile", to: 'pages#profile'
end

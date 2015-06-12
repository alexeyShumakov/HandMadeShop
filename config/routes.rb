Rails.application.routes.draw do
  resources :orders, only: [:new, :create]
  resources :line_items, only: [:create, :destroy, :update, :index]
  resources :products, only: [:show]
  resources :categories, only: [:index, :show]

  get 'products_search',to: 'products#search', as: :products_search
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'categories#index'
end

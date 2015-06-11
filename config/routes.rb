Rails.application.routes.draw do
  resources :products, only: [:show]
  get 'products_search',to: 'products#search', as: :products_search
  resources :categories, only: [:index, :show]
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'categories#index'
end

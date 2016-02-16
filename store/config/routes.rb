Rails.application.routes.draw do
  root 'welcome#index'
  resources :articles
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]

  devise_for :users

end

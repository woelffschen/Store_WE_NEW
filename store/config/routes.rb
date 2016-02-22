Rails.application.routes.draw do



  root 'welcome#index'
  resources :articles
  resources :category
  resources :order_items

  get 'cart' => 'cart#show'

  devise_for :users

  get 'orders' => 'orders#index'
  get 'orders/end' => 'orders#show'

end

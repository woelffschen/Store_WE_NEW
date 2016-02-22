Rails.application.routes.draw do

  root 'welcome#index'

  get 'orders' => 'orders#index'
  get 'orders/end' => 'orders#show'

  get 'cart' => 'cart#show'
  delete 'cart/bye' => 'cart#delete'

  resources :articles
  resources :category
  resources :order_items
  #resources :cart
  devise_for :users

end

Rails.application.routes.draw do

  root 'welcome#index'

  get 'orders' => 'orders#index'
  get 'orders/end' => 'orders#show'
  delete 'orders/empty' => 'orders#delete'


  get 'cart' => 'cart#show'
  delete 'cart/end' => 'cart#delete'

  resources :articles
  resources :category
  resources :order_items
  devise_for :users

end

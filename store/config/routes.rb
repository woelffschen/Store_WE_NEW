Rails.application.routes.draw do


  root 'welcome#index'
  resources :articles
  resources :category

  devise_for :users

  get '/cart' => 'cart#index'
  get '/cart/clear' => 'cart#clearCart'
  get '/cart/:id' => 'cart#add'

  get '/wishlist' => 'wishlist#index'
  get '/wishlist/clear' => 'wishlist#clearWishlist'
  get '/wishlist/:id' => 'wishlist#add'


  get '/order' => 'order#index'

end

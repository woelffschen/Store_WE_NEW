Rails.application.routes.draw do



  root 'welcome#index'
  resources :articles
  resources :category
  resources :order_items

  get 'cart' => 'cart#show'

  devise_for :users


  get '/wishlist' => 'wishlist#index'
  get '/wishlist/clear' => 'wishlist#clearWishlist'
  get '/wishlist/:id' => 'wishlist#add'


  get '/order' => 'order#index'

end

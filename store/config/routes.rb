Rails.application.routes.draw do

  root 'welcome#index'
  resources :articles

  devise_for :users

  get '/cart' => 'cart#index'
  get '/cart/clear' => 'cart#clearCart'
  get '/cart/:id' => 'cart#add'

  get '/order' => 'order#index'



end

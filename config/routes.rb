Rails.application.routes.draw do
  
  devise_for :users
  resources :bookitems
get 'home/about'
root 'home#index'
  
end

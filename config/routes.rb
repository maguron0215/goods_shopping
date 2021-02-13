Rails.application.routes.draw do

  root to: "home#index"
  devise_for :users

  resources :users
  resources :goods
  post "/guest_sessions/create" , to: 'guest_sessions#create'
end

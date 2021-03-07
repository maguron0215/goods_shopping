Rails.application.routes.draw do

  root to: "home#index"
  devise_for :users, controllers: { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :users
  resources :goods
  post "/guest_sessions/create" , to: 'guest_sessions#create'
end

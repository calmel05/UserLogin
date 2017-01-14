Rails.application.routes.draw do
  
  root 'home#index'

  devise_for :user, only: []

  namespace :v1, defaults: { format: :json } do
    resource :login, only: [:create], controller: :sessions
    resources :users, controller: :users
  end
end
Rails.application.routes.draw do
  root 'static_pages#home'
  devise_for :user, only: []

  namespace :v1, defaults: { format: :json } do
    resource :login, only: [:create], controller: :sessions
    resources :users, controller: :users
  end
end
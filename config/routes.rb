Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  root to:"rooms#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]
  resources :rooms, only: [:create, :new, :destroy] do
    resources :messages, only: [:create, :index]
  end
end
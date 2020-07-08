Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root "movies#index"

  resources :aws_texts, only: [:index, :show]
  resources :texts, only: [:index, :show]
  resources :verifys, only: [:create, :destroy]
  resources :questions, only: [:index, :create, :show] do
    resources :solutions, only: [:create]
  end
end

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root "movies#index"

  resources :aws_texts, only: [:index, :show]
  resources :questions, only: [:index, :create, :show] do
  resources :solutions, only: [:create]
  resources :lines    , only: [:index, :show]
  end
end

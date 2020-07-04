Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root "movies#index"

  resources :aws_texts, only: [:index, :show]
  resources :lines    , only: [:index, :show]
  resources :questions, only: [:index, :create, :show] do
  resources :solutions, only: [:create]
  end
end

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root "movies#index" 

  resources :aws_texts, only: [:index, :show]

  resources :movies, only: [:index] do
    resource :watches, only: [:create, :destroy]
  end

  resources :texts, only: [:index, :show] do
    resource :reads, only: [:create, :destroy]
  end

  resources :questions, only: [:index, :create, :show] do
    resources :solutions, only: [:create]
  end
end

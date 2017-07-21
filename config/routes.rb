Rails.application.routes.draw do
  root 'boards#index'

  resources :boards do
    resources :jobs, except: :index
  end
  resources :categories

  resources :users, only: [:show, :new, :create]
  resources :sessions,  only: [:new, :create, :destroy]
  resources :subscriptions,  only: [:new, :create, :destroy]
end

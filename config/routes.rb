Rails.application.routes.draw do
  root 'boards#index'

  resources :boards
  resources :jobs
  resources :categories
  resources :users
  resources :sessions
  resources :subscriptions
end
# build out the files for migration of Sinatra app code, start migrating files over.

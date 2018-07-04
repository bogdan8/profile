Rails.application.routes.draw do
  devise_for :users
  namespace :users do
    get :search, controller: :main
    resources :articles
    resources :categories
  end
  get :search, controller: :main
  resources :articles, only: %i[index show]
  resources :categories, only: %i[show]
  root to: 'main#index'
end

Rails.application.routes.draw do
  devise_for :users
  namespace :users do
    resources :articles
    resources :categories
  end
  resources :articles, only: %i[index show]
  resources :categories, only: %i[show]
  root to: 'main#index'
end

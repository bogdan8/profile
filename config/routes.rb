Rails.application.routes.draw do
  devise_for :users
  namespace :users do
    resources :articles
  end
  resources :articles, only: %i[index show]
  root to: 'main#index'
end

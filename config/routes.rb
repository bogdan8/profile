Rails.application.routes.draw do
  devise_for :users
  namespace :users do
    get :search, controller: :main
    resources :articles
    resources :categories
    resources :attachments
  end
  get :search, controller: :main
  resources :articles, only: %i[index show]
  resources :categories, only: %i[show]
  get :about, controller: :main
  get :contact, controller: :main
  root to: 'main#about'
end

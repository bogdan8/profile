Rails.application.routes.draw do
  devise_for :users
  namespace :users do
    get :search, controller: :main
    resources :articles
    resources :books, except: :show do
      patch :sort, on: :collection
    end
    resources :statistics, only: %i[index destroy]
    resources :contacts, only: %i[edit update]
    resources :certificates, except: :show
    resources :experiences do
      patch :sort, on: :collection
    end

    resources :categories do
      patch :sort, on: :collection
    end
    resources :attachments, except: :show do
      patch :sort, on: :collection      
    end
    resources :category_books do
      patch :sort, on: :collection
    end
  end
  get :search, controller: :main
  resources :articles, only: %i[index show]
  resources :categories, only: :show
  resources :contacts, only: :show
  get :about, controller: :main
  root to: 'main#about'
  get '*path', to: 'main#about', constraints: lambda { |req| req.path.exclude? 'rails/active_storage' }
end

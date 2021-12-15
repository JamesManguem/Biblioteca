Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :users
  end

  resources :users do
    resources :books, :borrowings
  end

  resources :books

  resources :editorials

  resources :editorials do
    resources :books, only: [:index,:new,:create]
  end

  resources :authors do
    resources :books, only: [:index,:new,:create]
  end

  resources :categories do
    resources :books, only: [:index,:new,:create]
  end

  resources :authors
  resources :categories



end

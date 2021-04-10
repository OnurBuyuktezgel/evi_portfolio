Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lectures, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :bookings, only: [:show, :new, :create]
  end
  resources :bookings, only: [:index, :destroy]

  resources :contacts, only: [:new, :create]

  get "about", to: 'pages#about'
end

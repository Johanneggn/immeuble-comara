Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/contact'
  get 'pages/rules'
  get 'pages/rgpd'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :user do
    resources :bookings, only: [:index, :new, :create, :edit, :update, :destroy] do
    end
    resources :flats, only: [:index] do
    end
  end

  resources :flats do
    resources :bookings, only: [:new, :create]
  end

  resources :client, only: [:new, :create] do
    resources :bookings, only: [:create]
  end

 resources :bookings, only: [:new, :create, :show]
end

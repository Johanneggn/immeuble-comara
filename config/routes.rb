Rails.application.routes.draw do
  get 'flats/index'
  get 'flats/show'
  get 'flats/new'
  get 'flats/create'
  get 'flats/edit'
  get 'flats/update'
  get 'flats/destroy'
  get 'bookings/new'
  get 'bookings/create'
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

 resources :flats
 resources :bookings, only: [:new, :create]
end

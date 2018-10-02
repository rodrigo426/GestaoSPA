Rails.application.routes.draw do
  resources :cashiers
  resources :clients
  get 'clients/index'
  resources :schedules
  #resources :users
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root :to => redirect('/admin')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/events', to: 'schedules#index'
  #get '/therapies', to: 'schedules#index'
end
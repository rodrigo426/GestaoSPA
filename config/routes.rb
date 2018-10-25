Rails.application.routes.draw do
  resources :records
  resources :addresses
  resources :phone_clients
  resources :cashiers
  resources :clients
  get 'clients/index'
  resources :schedules
  devise_for :users
  #mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  #root :to => redirect('/admin')
  root :to => "dashboard#index"
  #root :to => redirect('/dashboards')
  

  get '/events', to: 'schedules#index'
  #get '/therapies', to: 'schedules#index'
end
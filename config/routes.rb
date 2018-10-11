Rails.application.routes.draw do
  resources :cashiers
  resources :clients
  get 'clients/index'
  resources :schedules
  devise_for :users
  #mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  #root :to => redirect('/admin')
  mount Blazer::Engine, at: "blazer"

  get '/events', to: 'schedules#index'
  #get '/therapies', to: 'schedules#index'
end
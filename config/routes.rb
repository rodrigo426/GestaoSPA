Rails.application.routes.draw do
  resources :therapies
  resources :items
  resources :records
  resources :addresses
  resources :phone_clients
  resources :cashiers
  resources :clients do
    collection do
      get :autocomplete
    end
  end
  get 'clients/index'
  resources :schedules
  resources :users
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}
  #mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  #root :to => redirect('/admin')
  root :to => "dashboard#index"
  #root :to => redirect('/dashboards')
  

  get '/events', to: 'schedules#index'
  #get '/therapies', to: 'schedules#index'
end
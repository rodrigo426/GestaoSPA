Rails.application.routes.draw do
  get 'pages/index'
  resources :therapies
  resources :items
  resources :cashiers
  resources :schedules
  resources :clients
  get 'clients/index'
  resources :users
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}
  root :to => "dashboard#index"
  #root :to => redirect('/dashboards')
  get '/events', to: 'schedules#index'
  #get 'cashiers/historico'
end
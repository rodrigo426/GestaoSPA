Rails.application.routes.draw do
  match "reports/despesas" => "reports#despesas", as: :reports_despesas, via: [:get, :post]
  resources :events
  match "reports/Entrada" => "reports#Entrada", as: :reports_Entrada, via: [:get, :post]
  match "reports/therapist" => "reports#therapist", as: :reports_therapist, via: [:get, :post]
  get 'pages/index'
  resources :reports do
    collection { post :search, to: 'reports#therapist' }
  end
  resources :therapies
  resources :items
  resources :cashiers
  resources :schedules
  resources :clients
  resources :dashboard
  get 'clients/index'
  resources :users
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}
  root :to => "dashboard#index"
  #root :to => redirect('/dashboards')
  get '/events', to: 'schedules#index'
end
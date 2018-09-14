Rails.application.routes.draw do
  resources :schedules
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root :to => redirect('/admin')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :accounts
  resources :systems
  get 'systems/index'
  post 'systems/index'
  
  get 'users/index'
  post 'users/index'
  root to: 'users#index'
  post 'users/login_attempt'
  get 'users/add_user'
  get 'users/menu'
  get 'users/logout'
  post 'users/logout'

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

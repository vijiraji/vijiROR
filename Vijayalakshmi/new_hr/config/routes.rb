Rails.application.routes.draw do
  resources :systems
  get 'logs/home'
  get 'logs/login'
  root to: 'logs#login'
  get 'logs/login_create'
  post 'logs/login_create'  


  get 'logs/signup'
  get 'logs/create'
  post 'logs/create'

  get 'systems/index'
  post 'systems/index'  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

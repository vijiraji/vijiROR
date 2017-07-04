Rails.application.routes.draw do

  resources :computers
  resources :users
  post 'users/update'
  post 'users/delete'

  root to: 'users#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

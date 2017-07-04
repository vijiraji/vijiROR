Rails.application.routes.draw do
  get 'users/index'
  root to:"users#index"
 post 'users/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

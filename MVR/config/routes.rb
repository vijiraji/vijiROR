Rails.application.routes.draw do
  get 'sessions/login'

  post 'sessions/login_attempt'

 # get 'sessions/home'
  match 'title', :to => 'sessions#home', via: [:get]
#match 'photos', to: 'photos#show', via: [:get, :post]

  get 'sessions/profile'

  get 'sessions/setting'

  get 'users/new'

  post 'users/create'
 
  get 'users/create'
 
  get 'sessions/logout'

  root to: "users#new"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'sessions/login'
  get 'sessions/login_attempt'
  post 'sessions/login_attempt'

  get  'sessions/home'
 root to:"sessions#hme"
 get 'sessions/profile'


  
  post 'sessions/logout'
  get 'sessions/setting'

  get 'users/index'
 post 'users/create' 

resource :users
resource :sessions
  root to:"sessions#login"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'users/home'
root :to => "users#home"
  get 'users/login'

  get 'users/register'

  get 'users/dashboard'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'site#index'


  #page to display all users
  get '/user', to: 'users#index'

  get '/product', to: 'products#index'
end

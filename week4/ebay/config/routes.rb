Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'site#index', as: 'site'


  #page to display all users
  resources :users do
  	resources :products
  end

  get '/product/all', to: 'products#all'
end

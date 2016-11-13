Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/',  to: 'site#index', as: 'site'

  resources :ticketmasters do
	resources :comments
	end

end

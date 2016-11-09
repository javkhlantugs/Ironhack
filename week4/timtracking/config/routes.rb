Rails.application.routes.draw do
	
	get '/', to: 'site#home'

	get '/contact', to: 'site#contacts'
	get '/calculator', to: 'calculator#add_form'
	post '/calculate', to: 'calculator#process_addition'
	
	get '/say_name/:name', to: 'site#say_name'
	get '/projects', to: 'projects#index'

	# create new form
	get 'projects/new', to: 'projects#new'

	# project_path exists
	get 'projects/:id', {to: 'projects#show', as: "project"}

	post '/projects', to: 'projects#create'
end


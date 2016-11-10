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


	get '/projects/:project_id/time_entries', to: 'time_entries#index', as: "project_time_entries"

	get '/projects/:project_id/time_entries/new', to: 'time_entries#new', as: "new_project_time_entry"

	post '/projects/:project_id/time_entries', to: 'time_entries#create'

	get '/projects/:project_id/time_entries/:id/edit', to: 'time_entries#edit', as: "edit_project_time_entry"
	patch '/projects/:project_id/time_entries/:id', to: "time_entries#update", as: 'project_time_entry'

end


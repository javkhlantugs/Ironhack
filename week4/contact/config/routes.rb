Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #homepage
  get "/", to: "contacts#home"
  
  #to contacts
  get "/contacts", to: "contacts#index"

  #route to new contact
  get "/contacts/new", to: "contacts#new"

  post "/contacts/create", :to => "contacts#create"

end

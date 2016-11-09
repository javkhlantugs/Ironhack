Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #homepage

    #to contacts
 
  get "/", to: "site#index"
  #route to new contact
  get "/contacts/new", to: "contacts#new"

  post "/contacts/create", to: "contacts#create"
  get "/contacts", to: "contacts#index"

  get "/contacts/:id", to: "contacts#show", as: "contact"
end

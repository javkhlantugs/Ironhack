Rails.application.routes.draw do
  # home page
  get "/", to: "site#home"

  #user will put in the text
  get "/text_inspections/new", to: "text_inspections#new"

  #results will display
  post "/text_inspections", to: "text_inspections#create"

  #ascii
  get "/asciis/new", to: "asciis#new"

  post "/asciis", to: "asciis#create"


  #random text generator
  get "/lipsum", to: "lipsum#new"

  post "/lipsum/create", to: "lipsum#create"
end

Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  get '/contacts' => 'contacts#index'
  get '/contacts/new' => 'contacts#new'
  post '/contacts' => 'contacts#create'
  get '/contacts/:id' => 'contacts#show'
  get 'contacts/:id/edit' => 'contacts#edit'
  patch '/contacts/:id' => 'contacts#update'
  delete '/contacts/:id' => 'contacts#destroy'

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    #INDEX- show all
    get "/contacts" => "contacts#index"
    #Show- show one
    get '/contacts/:id' => 'contacts#show'
    #Create- new
    post '/contacts' => 'contacts#create'
    #Edit
    patch '/contacts/:id' => 'contacts#update'
    #Delete
    delete '/contacts/:id' => 'contacts#delete'
    post "/users" => 'users#create'
    post "/sessions" => 'sessions#create'
  end
end

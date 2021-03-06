Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE

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
    delete '/contacts/:id' => 'contacts#destroy'
    post "/users" => 'users#create'
    post "/sessions" => 'sessions#create'
  end
end

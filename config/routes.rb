Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'accounts#index'
  get '/accounts' => 'accounts#index'

  # get '/products/new' => 'products#new'
  # post '/products' => 'products#create'


  # get '/products/:id' => 'products#show'
  # # post '/products' => 'orders#create'

 
  # post '/orders' => 'orders#create'
  # get '/orders/:id' => 'orders#show'


  # get '/products/:id/edit' => 'products#edit'
  # patch 'products/:id' => 'products#update'

  # delete '/products/:id' => 'products#destroy'


  # get '/signup' => 'users#new'
  # post '/users' => 'users#create'

  # get '/login' => 'sessions#new'
  # post '/login' => 'sessions#create'
  # get '/logout' => 'sessions#destroy'


end
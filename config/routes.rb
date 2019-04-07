Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'accounts#index'
  get '/accounts' => 'accounts#index'

  get '/accounts/new' => 'accounts#new'
  post '/accounts' => 'accounts#create'


  get '/accounts/:id' => 'accounts#show'
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

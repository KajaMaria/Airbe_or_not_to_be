Rails.application.routes.draw do
  get 'requests/index'
  get 'requests/show'
  get 'requests/new'
  get 'requests/requestsmade'
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/edit'
  get 'users/delete'
  get 'listings/index'
  get 'listings/show'
  get 'listings/new'
  get 'listings/edit'


  # when you visit the homepage
  get '/' => 'sessions#new'

  # alternative signup paths to '/users/new'
  get '/signup' => 'users#new'
  get '/register' => 'users#new'

  # alternative login paths
  get '/signin' => 'sessions#new'
  get '/login' => 'sessions#new'

  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  resources :listings
  resources :users
  resources :requests
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

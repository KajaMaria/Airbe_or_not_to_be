Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/edit'
  get 'users/delete'
  get 'listings/index'
  get 'listings/show'
  get 'listings/new'
  get 'listings/edit'
  resources :listings 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

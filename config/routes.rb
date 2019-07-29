Rails.application.routes.draw do
  get 'listings/index'
  get 'listings/show'
  get 'listings/new'
  get 'listings/edit'
  resources :listings 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

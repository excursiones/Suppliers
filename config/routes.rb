Rails.application.routes.draw do
  get '/accounts/totales' => 'accounts#totales'
  post '/suppliers/search' => 'suppliers#searchSuppliers'
  get '/suppliers/:id/account' => 'suppliers#get_account'
  get '/suppliers/:id/excursions' => 'suppliers#get_excursions'

  resources :excursions
  resources :accounts
  resources :suppliers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

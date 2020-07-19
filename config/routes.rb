Rails.application.routes.draw do
  
  root 'home#index'
  
  resources :charities
  devise_for :users, controllers: { registrations: 'registrations' }
 
  
  get 'search', to: "charities#search"
 
 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
end

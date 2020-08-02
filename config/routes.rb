Rails.application.routes.draw do
  
  resources :deliveries
  root 'home#index'
  
  resources :charities
  
 

  devise_for :users, controllers: { registrations: 'registrations' }
 
 resources :users, only: [:index]
  
  get 'search', to: "charities#search"
  get 'search2', to: "charities#search2"
  get 'about_us#search2', to: "charities#search2"
 
 get '/contact_us' =>'home#contact_us'
 get '/about_us' =>'home#about_us'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
end

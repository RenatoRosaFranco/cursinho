Rails.application.routes.draw do 
  
  namespace :dashboard do
  	 get '/', to: 'home#index'  
  end

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  resource 	:contact, only: [:create, :destroy]
  resources :newsletters, only: [:create, :destroy]
end

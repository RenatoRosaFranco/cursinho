Rails.application.routes.draw do 
  
  namespace :dashboard do
  	 get '/', to: 'home#index'  
  	 resources :editions do 
  	 	resources :editals
  	 	resources :subscriptions
  	 end
  	 resources :newsletters
  	 resources :users
  end

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  resource 	:contact, only: [:create, :destroy]
  resource  :newsletter, only: [:create, :destroy]
end

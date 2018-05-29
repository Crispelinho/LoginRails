Rails.application.routes.draw do
  devise_for :users
  resources :parameters
  resources :type_requests
  resources :usuarios
  resources :requests
  resources :inicio
  #get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  
end

Rails.application.routes.draw do
  resources :tickets
  root 'core#index'
  devise_for :users
  get 'dashboard', to: "core#dashboard" 
end

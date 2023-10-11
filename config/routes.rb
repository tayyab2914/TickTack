Rails.application.routes.draw do
  root 'core#index'
  devise_for :users
  get 'dashboard', to: "core#dashboard" 
end

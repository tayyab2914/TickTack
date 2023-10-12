Rails.application.routes.draw do
  resources :tickets do
    collection do
      get :users
    end
  end
  root 'core#index'
  devise_for :users
  get 'dashboard', to: "core#dashboard" 
end

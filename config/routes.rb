Rails.application.routes.draw do
  get 'calendar/index'
  resources :tickets do
    collection do
      get :users
      get :assigned
      get :created
    end
  end
  root 'core#index'
  devise_for :users
  get 'dashboard', to: "core#dashboard" 
  get 'calendar', to: "calendar#index"
end

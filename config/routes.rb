Rails.application.routes.draw do
  root 'core#index'
  devise_for :users
end

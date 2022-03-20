Rails.application.routes.draw do
  root 'pets#index'
  resources :pets
  devise_for :users
end

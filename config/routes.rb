Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'tweets#index'
  resources :tweets, only: [:new, :create, :destroy, :edit, :update]
  resources :users, only: [:show, :edit, :update] 
  resources :admins, only: [:new, :create, :index]
end

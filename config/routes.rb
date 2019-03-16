Rails.application.routes.draw do
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'memos#index'
  resources :tweets, only: [:new, :create, :destroy, :edit, :update, :index] 
  resources :users, only: [:show, :edit, :update, :index] 
  resources :admins, only: [:new, :create, :index, :show, :edit, :update]
  resources :memos, only: [:new, :create, :index, :show, :destroy] do
    resources :comments, only: [:create]
    resources :checks, only: [:create]
  end
  
  
  resources :chouseis, only: [:new, :create, :index, :show, :edit, :update] 
  resources :dayoftweets, only: [:new, :create, :index]
 
  
end

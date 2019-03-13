Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'memos#index'
  resources :tweets, only: [:new, :create, :destroy, :edit, :update, :index] do
    collection do
      get 'search'
    end
  end
  resources :users, only: [:show, :edit, :update] 
  resources :admins, only: [:new, :create, :index]
  resources :memos, only: [:new, :create, :index, :show, :destroy]
  
end

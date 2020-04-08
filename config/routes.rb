Rails.application.routes.draw do
  resources :communities

  resources :submissions do
    resources :comments
  end
  
  devise_for :users
  resources :users, only: [:show], as: "profile"
  root to: 'submissions#index'
end

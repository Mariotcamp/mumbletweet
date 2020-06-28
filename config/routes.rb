Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'
  resources :users, only: [:show]       #users_controllerに対してのresourcesメソッド
  resources :tweets do
    resources :comments, only: [:create]
  end


  
  get 'tweets/new'=>'tweets#new'

 
  
end

Rails.application.routes.draw do

  root to: 'homes#top'
  devise_for :users
  resources :users
  resources :illusts

  resources :users do
    member do
        get :following, :followers
    end
  end
  resources :relationships, only: [:create, :destroy]
 

end

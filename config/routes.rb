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

  resources :illusts, only: [:index, :show, :new, :create] do
    resource :likes, only: [:create, :destroy]
  end
end

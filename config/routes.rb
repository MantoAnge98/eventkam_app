Rails.application.routes.draw do

  devise_for :users
    #Home 
    root to: "home#index"

    resources :users, only: %i[show index]

    resources :relationships, only: [:create, :destroy]

    resources :favorites, only: [:create, :destroy]
end

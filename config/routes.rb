Rails.application.routes.draw do

  devise_for :users
    #Home 
    root to: "home#index"

    resources :users, only: %i[show index]
   
    resources :events, only: [:new, :create, :show, :index]
  
    resources :participants,  only: [:new, :create, :show, :index] do
      match '/join', to: 'participants#join_event', via: :post, on: :collection
    end
    
end

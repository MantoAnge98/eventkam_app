Rails.application.routes.draw do
  devise_for :users
    #Home 
    root to: "home#index"

    get '/search' => 'pages#search', :as => 'search_page'

    resources :users,  only: [:new, :create, :show, :index]
 
    resources :events, only: [:new, :create, :show, :search, :search, :edit, :index]
  
    resources :participants,  only: [:new, :create, :show, :edit, :index] do
      match '/join', to: 'participants#join_event', via: :post, on: :collection
    end
    
end

Rails.application.routes.draw do
  devise_for :users
    #Home 
    root to: "home#index"

    get '/search' => 'pages#search', :as => 'search_page'

    resources :users,  only: [:new, :create, :show, :index]
 
  
    resources :events do
      collection do
        post :confirm
      end
    end

    resources :participants,  only: [:new, :create, :show, :edit, :index] do
      match '/join', to: 'participants#join_event', via: :post, on: :collection
    end
    
end

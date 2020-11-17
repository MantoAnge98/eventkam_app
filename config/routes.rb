Rails.application.routes.draw do

  mount LetterOpenerWeb::Engine, at: "/inbox" if Rails.env.development?
  
  namespace :admin do
    resources :users do
      collection do
        post :confirm
      end
    end
  end

  devise_for :users

  #Home 
  root to: "home#index"

  get '/search' => 'pages#search', :as => 'search_page'

  resources :users,  only: [:new, :create, :show, :destroy, :index]

  resources :events do
    collection do
      post :confirm
    end
  end

  resources :participants,  only: [:index] do
    match '/join', to: 'participants#join_event', via: :post, on: :collection
  end

    #routes to errors
  get '404', :to => 'errors#not_found'
  get '500', :to => 'errors#internal_error'

end

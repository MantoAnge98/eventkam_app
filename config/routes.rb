Rails.application.routes.draw do
  devise_for :users
    #Home 
    root to: "home#index"
end

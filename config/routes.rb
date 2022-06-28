Rails.application.routes.draw do

  root "home#index"

  get "home", to: "home#index"

  get "get-consumption", to: "home#get_consumption"

  resources :vehicles, only: [:show, :index, :new, :create]
end

Rails.application.routes.draw do
  
  root 'home#index'
  get 'need' => 'home#need'
  
  ###### CHATROOM ROUTE
  get 'show'=> 'rooms#show'

  ###### AUTHENTICATION ROUTES

  #get 'sessions/new'
  get "login" => "sessions#new"
  post "login" => "sessions#create"
  get 'logout' => 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount ActionCable.server => '/cable'
end

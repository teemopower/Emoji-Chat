Rails.application.routes.draw do
  root 'home#index'
  get 'need' => 'home#need'
  get 'show'=> 'rooms#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount ActionCable.server => '/cable'
end

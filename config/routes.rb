Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :outfits, only: [:index, :show]
  resources :influencers, only: [:index, :show]
  resources :favourites, only: [:index, :show, :new, :create]
end

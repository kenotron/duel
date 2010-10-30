Duel::Application.routes.draw do
  get "shop/weapon"

  get "shop/armor"

  get "shop/item"

  get "fight/monster"

  resources :characters

  devise_for :users

  resources :matches

  resources :elements

  resources :weapons

  resources :players
  
  root :to => "welcome#index"
end

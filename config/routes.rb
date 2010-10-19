Duel::Application.routes.draw do
  resources :characters

  devise_for :users

  resources :matches

  resources :elements

  resources :weapons

  resources :players
  
  root :to => "welcome#index"
end

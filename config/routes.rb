Rails.application.routes.draw do
  devise_for :users

  resources :tracks
  resources :playlists

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

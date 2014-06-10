Rails.application.routes.draw do
  resources :songs, only: [:create]
  
  root "songs#index"
end

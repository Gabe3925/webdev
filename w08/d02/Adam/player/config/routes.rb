Rails.application.routes.draw do
 root 'songs#index'
 resources :songs, only: [:create, :update, :destroy]
end

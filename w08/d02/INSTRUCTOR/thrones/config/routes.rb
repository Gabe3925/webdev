Rails.application.routes.draw do
 root 'characters#index'
 resources :characters, only: [:update]
end

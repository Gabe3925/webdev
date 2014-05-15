Rails.application.routes.draw do
  resources :dogs
  root "shelters#index"
end

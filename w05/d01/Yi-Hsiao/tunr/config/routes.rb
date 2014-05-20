Rails.application.routes.draw do
  root "welcome#index"
  get "/signup" => "users#new"
  get "/login" => "sessions#new"

  resources :artists do
    resources :songs, shallow: true, except: [:index, :show]
  end

  resources :users, except: [:index]
end

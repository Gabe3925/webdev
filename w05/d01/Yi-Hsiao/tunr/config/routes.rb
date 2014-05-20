Rails.application.routes.draw do
  resources :artists do
    resources :songs, shallow: true, except: [:index, :show]
  end

  root "welcome#index"
end

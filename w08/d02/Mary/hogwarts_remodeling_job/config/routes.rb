Hogwarts::Application.routes.draw do

root "houses#index"
resources :houses, only: [:index, :show]
resources :students, only: [:index, :new, :create, :show]

end

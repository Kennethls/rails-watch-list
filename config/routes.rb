Rails.application.routes.draw do

  root 'lists#index'
  resources :lists, only: [:index, :new, :show] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end
  # Defines the root path route ("/")
  # root "articles#index"

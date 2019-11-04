Rails.application.routes.draw do
  resources :genres, only: [:show, :new, :create, :edit, :update, :index]
  resources :artists, only: [:show, :new, :create, :edit, :update, :index]
  resources :songs, only: [:show, :new, :create, :edit, :update, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

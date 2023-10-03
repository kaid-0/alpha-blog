Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  # Defines the root path route ("/")
  # root "articles#index"
  get 'about', to: 'pages#about'
  # Defining routes for articles, but limiting it to only the show & index actions
  resources :articles, only: [:show, :index, :new, :create]
end

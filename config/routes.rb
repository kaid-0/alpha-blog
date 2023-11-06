Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  # Defines the root path route ("/")
  # root "articles#index"
  get 'about', to: 'pages#about'
  # Defining routes for articles
  resources :articles

  # Defining routes for user signup
  get 'signup' => 'users#new'
  resources :users, except: [:new] # Defines all the routes for the users and it's controller, except for new. Because new is already defined for signup
  
end

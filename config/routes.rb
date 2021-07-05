Rails.application.routes.draw do
  get '/search', to: 'search_page#search'
  get 'sessions/new'
  root 'home#index'
  get '/about', to: 'home#about'
  get '/contact' ,to: 'home#contact'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :microposts
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:edit, :update, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
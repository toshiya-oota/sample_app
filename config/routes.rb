Rails.application.routes.draw do
  get 'sessions/new'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  root 'static_pages#home'
  get  '/signup', to: 'users#new'
  resources :users
  resources :account_activations, only: [:edit]
  resources :microposts, only: %i[create destroy]
  get '/microposts', to: 'static_pages#home'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end

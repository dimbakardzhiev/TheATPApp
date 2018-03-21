Rails.application.routes.draw do

  get 'twitter/index'
  get 'sessions/new'
  get 'users/new'
  get 'charts/line_chart'
  get 'charts/bar_chart'
  get 'error/not_found'
  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/about'
  get 'rankings/index'
  

  get  '/linecharts', to: 'charts#form_line_chart'
  get  '/barcharts',  to: 'charts#form_bar_chart'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get  '/about',   to: 'static_pages#about'
  get  '/home',    to: 'static_pages#home'
  get  '/login',   to: 'sessions#new'
  get  'twitter',  to: 'twitter#index'
  post '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy' 
  
  resources :rankings
  resources :players
  resources :users
  resources :account_activations, only: [:edit]

  match '*a', :to => 'error#not_found', via: :get
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
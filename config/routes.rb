Rails.application.routes.draw do

  get 'charts/line_chart'

  get 'charts/bar_chart'

  get 'error/not_found'

  root 'static_pages#home'

  get 'static_pages/home'

  get 'static_pages/about'

  get 'rankings/index'

  get '/about', to: 'static_pages#about'
  get '/home', to: 'static_pages#home' 
  
  resources :rankings
  resources :players

  match '*a', :to => 'error#not_found', via: :get
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
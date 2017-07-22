Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show, :index]
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  root "welcome#homepage"
  get '/about', to: "welcome#about"

  get '/clients/:id/dashboard', to: 'users#index'


  resources :wines, only: [:index]

end

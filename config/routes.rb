Rails.application.routes.draw do
  get 'home/index'
  root :to => "home#index"

  match 'auth/:provider/callback', to: 'sessions#create', via: :get
  match 'auth/failure', to: redirect('/'), via: :get
  match 'signout', to: 'sessions#destroy', as: 'signout', via: :get

  resources :users
  resources :locations
  
  get '/search' => 'home#index'
end

Rails.application.routes.draw do

  get '/users', to: 'users#index'
  get 'users/new', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'

  get '/dishes', to: 'dishes#index'
  get 'dishes/new', to: 'dishes#new', as: 'new_dish'
  post '/dishes', to: 'dishes#create'
  get 'dishes/:id' , to: 'dishes#show', as: 'dish'
  get 'dishes/:id/edit', to: 'dishes#edit', as: 'edit_dish'
  patch 'dishes/:id', to: 'dishes#update'
  delete 'dishes/:id', to: 'dishes#destroy'

  get '/restaurants', to: 'restaurants#index'
  get '/restaurants/new', to: 'restaurants#new', as: 'new_restaurant'
  get '/restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  post '/restaurants', to: 'restaurants#create', as: 'create_restaurant'
  delete '/restaurants/:id/destroy', to: 'restaurants#destroy', as: 'destroy_restaurant'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end

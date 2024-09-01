Rails.application.routes.draw do
  get 'favorites/index'
  get 'favorites/show'
  get 'favorites/new'
  get 'favorites/create'
  get 'favorites/edit'
  get 'favorites/update'
  get 'favorites/destroy'
  get 'reservations/index'
  get 'reservations/show'
  get 'reservations/new'
  get 'reservations/create'
  get 'reservations/edit'
  get 'reservations/update'
  get 'reservations/destroy'

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
  get 'restaurants/new', to: 'restaurants#new', as: 'new_restaurant'
  post '/restaurants', to: 'restaurants#create'
  get 'restaurants/:id' , to: 'restaurants#show', as: 'restaurant'
  get 'restaurants/:id/edit', to: 'restaurants#edit', as: 'edit_restaurant'
  patch 'restaurants/:id', to: 'restaurants#update'
  delete 'restaurants/:id', to: 'restaurants#destroy'

  get '/reports/restaurants', to: 'user_favorites_report#restaurant_and_tables_report', defaults: { format: :pdf }
  get '/reports/registrations', to: 'registrations#ponto_gestor_report', defaults: {format: :pdf}
  get '/reports/users', to: 'users_report#user_report', defaults: { format: :pdf }
  get '/reports/userfavorites', to: 'user_favorites_report#userfavorites_report', defaults: { format: :pdf }
  get '/cruds', to: 'cruds#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end

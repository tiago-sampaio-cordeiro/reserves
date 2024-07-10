Rails.application.routes.draw do
  get 'dishes/index', to: 'dishes#index'
  get 'dishes/show' , to: 'dishes#show'
  get 'dishes/new', to: 'dishes#new'
  get 'dishes/create', to: 'dishes#create'
  get 'dishes/edit'
  get 'dishes/update'
  get 'dishes/destroy'
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end

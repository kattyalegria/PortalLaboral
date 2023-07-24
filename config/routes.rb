Rails.application.routes.draw do
  resources :users
  resources :oferta_laborals
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "oferta_laborals#index"
end

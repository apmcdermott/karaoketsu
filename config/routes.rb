Rails.application.routes.draw do
  # Allows for additional fields in Devise
  devise_for :users, :controllers => { registrations: 'registrations' }

  root :to => 'home#index'

  get '/profile', to: 'home#dashboard'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :artists
  resources :songs

  # Routes tag searches to songs index action
  get 'tags/:tag', to: 'songs#index', as: :tag
end

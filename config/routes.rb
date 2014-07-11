Rails.application.routes.draw do
  # Allows for additional fields in Devise
  devise_for :users, :controllers => { registrations: 'registrations' }

  # Authenticated users to go their dashboard
  authenticated do
    root :to => 'home#dashboard', as: :authenticated
  end

  # Non-authenticated users to go static homepage
  root :to => 'home#index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :artists
  resources :songs

  # Routes tag searches to songs index action
  get 'tags/:tag', to: 'songs#index', as: :tag
end

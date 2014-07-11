Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'artists#index'
  resources :artists
  resources :songs
  get 'tags/:tag', to: 'songs#index', as: :tag
end

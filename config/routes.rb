Rails.application.routes.draw do
  root 'artists#index'
  resources :artists
  resources :songs
  get 'tags/:tag', to: 'songs#index', as: :tag
end

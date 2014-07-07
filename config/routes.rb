Rails.application.routes.draw do
  root 'songs#index'
  resources :artists
  resources :songs
end

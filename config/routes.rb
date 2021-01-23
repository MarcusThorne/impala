Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"

  resources :bookings
  resources :rooms
  resources :availabilities
  resources :blogs

  get 'search/:query', to: 'availabilities#search'
end

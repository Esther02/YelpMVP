Rails.application.routes.draw do
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # # A visitor can see the list of all restaurants.
  # get '/restaurants', to: 'restaurants#index'
  # # A visitor can add a new restaurant, and be redirected to the show view of that new restaurant.
  # get '/restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # post '/restaurants', to: 'restaurants#create'
  # # A visitor can read one restaurant.
  # get '/restaurants/:id', to: 'restaurants#show', as: :restaurant
  # # A visitor can add a new review to a restaurant
  # get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new'
  # post 'restaurants/:restaurant_id/reviews', to: 'reviews#create'
  resources :restaurants, only: [:index, :show, :create, :new] do
    resources :reviews, only: [:new, :create]
  end
end

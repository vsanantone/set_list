Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/songs', to: 'songs#index'
  get '/songs/:id', to: 'songs#show'  # Defines the root path route ("/")
  get '/artists/:artist_id/songs', to: 'artist_songs#index' # Defines the root path route ("
  # root "articles#index"
end

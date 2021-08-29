Rails.application.routes.draw do
  root to: 'internal#system_check'
  get '/countries', to: 'locations#countries'
  get '/:country/cities', to: 'locations#countries_cities'
  get '/cities', to: 'locations#cities'

  post '/users', to: 'users#create'
  post '/users/collections', to: 'users#collections'
end

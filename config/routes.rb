Rails.application.routes.draw do
  root to: 'internal#system_check'
  get '/countries', to: 'locations#countries'
  get '/:country/cities', to: 'locations#countries_cities'
end

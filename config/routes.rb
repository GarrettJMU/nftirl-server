Rails.application.routes.draw do
  root to: 'internal#system_check'
  get '/countries', to: 'locations#countries'
end

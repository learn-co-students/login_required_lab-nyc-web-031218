Rails.application.routes.draw do
  root 'sessions#new'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/show', to: 'sessions#show'
  get '/secrets', to: 'secrets#show'
  post '/logout', to: 'sessions#destroy'
end

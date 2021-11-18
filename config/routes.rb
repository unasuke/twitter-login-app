Rails.application.routes.draw do
  root 'index#index'
  get '/auth/:provider/callback', to: 'sessions#create'
end

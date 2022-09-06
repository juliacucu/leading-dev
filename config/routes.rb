Rails.application.routes.draw do
  get '/', to: 'pages#home'
  get '/wines', to: 'wines#index'
  get '/about', to: 'pages#about'
end
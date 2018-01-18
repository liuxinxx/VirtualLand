Rails.application.routes.draw do
  get "login",to: 'sessions#new'
  post "login",to: 'sessions#create'
  get "logout",to: 'sessions#destroy'
  resource :users
  get 'lands/show'
  post 'lands/validation'
  get 'lands/index'
end

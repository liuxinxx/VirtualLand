Rails.application.routes.draw do
  resource :users
  get 'lands/show'
  post 'lands/validation'
  get 'lands/index'

  root 'lands#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

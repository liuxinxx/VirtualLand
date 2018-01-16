Rails.application.routes.draw do
  get 'lands/show'

  get 'lands/index'

  root to: 'lands#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

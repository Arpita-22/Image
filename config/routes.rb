Rails.application.routes.draw do
  resources :images
  resources :users
  get '/get_image', to 'nasa#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

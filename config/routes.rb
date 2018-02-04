Rails.application.routes.draw do
  get '/feeds', to: 'feeds#index'
  get '/feeds/new', to: 'feeds#new'
  post '/feeds', to: 'feeds#create'
  delete '/feeds/:id', to: 'feeds#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

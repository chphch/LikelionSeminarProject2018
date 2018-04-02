Rails.application.routes.draw do
  get '/feeds', to: 'feeds#index'
  get '/feeds/new', to: 'feeds#new'
  post '/feeds', to: 'feeds#create'
  delete '/feeds/:id', to: 'feeds#destroy'
  get '/feeds/:id/edit', to: 'feeds#edit'
  put '/feeds/:id', to: 'feeds#update'

  get '/events', to: 'events#index'
  get '/events/new', to: 'events#new'
  post '/events', to: 'events#create'
  delete '/events/:id', to: 'events#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

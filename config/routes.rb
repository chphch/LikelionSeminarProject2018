Rails.application.routes.draw do
  devise_for :users
  get '/feeds', to: 'feeds#index'
  get '/feeds/new', to: 'feeds#new'
  post '/feeds', to: 'feeds#create'
  delete '/feeds/:id', to: 'feeds#destroy'
  post '/feeds/:id/comments', to: 'feeds#create_comment'
  delete '/feeds/:id/comments/:comment_id', to: 'feeds#destroy_comment'

  get '/events', to: 'events#index'
  get '/events/new', to: 'events#new'
  post '/events', to: 'events#create'
  delete '/events/:id', to: 'events#destroy'
  post '/events/:id/comments', to: 'events#create_comment'
  delete '/events/:id/comments/:comment_id', to: 'events#destroy_comment'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

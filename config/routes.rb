Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/lists', to: 'lists#index'
  post '/lists', to: 'lists#create'
  get '/lists/new', to: 'lists#new'
  get '/lists/:list_id/bookmarks/new', to: 'bookmarks#new', as: :bookmarks_new
  post '/lists/:list_id/bookmarks', to: 'bookmarks#create', as: :bookmarks
  get '/lists/:id', to: 'lists#show', as: :list
end

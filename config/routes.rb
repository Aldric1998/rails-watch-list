Rails.application.routes.draw do
  # get 'bookmarks/index'
  # get 'bookmarks/new'
  # get 'bookmarks/create'

  # get 'bookmarks/show'
  # get 'movies/index'
  # get 'movies/show'
  # get 'movies/edit'
  # get 'movies/create'
  # get 'lists/index'
  # get 'lists/show'
  # get 'lists/edit'
  # get 'lists/create'
  root to: 'lists#index'
  resources :lists, only: %i[index new create show] do
    resources :bookmarks, only: %i[new create show]
  end
  resources :bookmarks, only: %i[destroy]
end

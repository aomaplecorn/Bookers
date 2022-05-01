Rails.application.routes.draw do
  root to: 'homes#top'
  resources :books
  # get 'books' => 'books#index'
  # post 'books' => 'books#create'
  # get 'books/:id' => 'books#show'
  # get 'books/:id/edit' => 'books#edit'
  # patch 'books/:id' => 'books#update'
  # delete 'books/:id' => 'books#destroy'
end

Rails.application.routes.draw do
  
  get 'top' => 'books#top'
  root :to => 'books#top'

  get 'books' => 'books#index'

  post 'books' => 'books#create'
  
  get 'books/:id/edit' => 'books#edit', as: 'edit'

  get 'books/:id/show' => 'books#show', as: 'show'
  
  patch 'books/:id' => 'books#update', as: 'update'

  delete 'books/:id' => 'books#destroy', as: 'destroy_book'

end

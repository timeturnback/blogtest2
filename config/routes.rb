Rails.application.routes.draw do	
  get 'books/new'
  post 'books/create'
  get 'books/:id' , to: 'books#show'

  get 'posts/new'
  post 'posts/create'

  get 'posts/:id' , to: 'posts#show'
  get 'posts/:id/edit' ,to: 'posts#edit'
  patch 'posts/:id' , to: 'posts#update'
  delete 'posts/:id' , to: 'posts#destroy'


  resources :students do
  	resources :reviews
  end

  # get 'test1/testoutput'
  get 'test1/testoutput'

  # get 'welcome/index'
  
  resources :articles

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

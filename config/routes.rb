Rails.application.routes.draw do

  devise_for :users
  root 'fishes#index' 
  
  get '/fishes' => 'fishes#index'
  get '/fishes/new' => 'fishes#new'
  post '/fishes' => 'fishes#create'

  get '/fishes/random' => 'fishes#random'
  get '/fishes/:id' => 'fishes#show'
  #show page will be used for random because you only need to show one item


  get '/fishes/:id/edit' => 'fishes#edit'
  patch '/fishes/:id' => 'fishes#update'
  delete '/fishes/:id' => 'fishes#destroy'


  post '/search' => 'fishes#search'

  get '/suppliers' => 'suppliers#index'
  get '/suppliers/new' => 'suppliers#new'
  post '/suppliers' => 'supplers#create'
  get '/suppliers/:id' => 'suppliers#show'
  get '/suppliers/:id/edit' => 'suppliers#edit'
  patch '/suppliers/:id' => 'suppliers#update'
  delete 'suppliers/:id' => 'suppliers#destory'

  # post '/orders' => 'orders#create'
   #get '/orders/:id' => 'orders#show'

  get 'carted_fishes/:id' => 'carted_fishes#index'
  post '/carted_fishes' => 'carted_fishes#create'




end

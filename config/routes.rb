Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  get '/login',     to:'sessions#new'
  post '/login',     to:'sessions#create'
  delete '/logout',  to:'sessions#delete'
  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts, only: [:new, :create, :index]
  resources :users, only: [:new, :create]
end

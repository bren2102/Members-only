Rails.application.routes.draw do
  get '/signin',     to:'sessions#new'
  post '/login',     to:'sessions#create'
  get '/feed',       to:'application#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

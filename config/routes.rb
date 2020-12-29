Rails.application.routes.draw do

  get 'login', to: 'sessions#new', as: "login"  
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'

  post '/message', to: 'messages#create'
  root to: 'chatroom#index'
  
  mount ActionCable.server, at: '/cable'
end

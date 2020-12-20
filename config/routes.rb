Rails.application.routes.draw do
  get '/login', to: 'sessions#new', as: "login"
  root to: 'chatroom#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

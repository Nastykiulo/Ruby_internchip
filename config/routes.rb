Rails.application.routes.draw do
  resources :user_sessions
  resources :users
  resources :answers
  resources :questions
  resources :students
  resources :teachers
  resources :tests

  #get 'home/index'
root 'home#index'
get 'home/about'

  #resources :users, only: [:new, :create]
  #resources :user_sessions, only: [:create, :destroy] delete '/sign_out', to: 'user_sessions#destroy', as: :sign_out get '/sign_in', to: 'user_sessions#new', as: :sign_in

  #login "login", :controller => "user_sessions", :act => "new"
  #login "logout", :controller => "user_sessions", :act => "destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  #devise_for :users
  # devise_for :users, controllers: {
  #      :registrations => "users/registrations" }
  
  resources :answers
  resources :questions
  resources :students
  resources :teachers
  resources :tests
  #get 'home/index'
root 'home#index'
get 'home/about'

devise_for :users, controllers: { registrations: "users/registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #match "/registered", :to => "users#show", :as => :user_registered, via: :get
  #match "/tests/:id/questions/new", :to => "new#question", :as => :new_question, via: :get
end

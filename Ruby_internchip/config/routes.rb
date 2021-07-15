Rails.application.routes.draw do
  #devise_for :admins
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
devise_for :admins, controllers: { registrations: "admins/registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #/tests/id/questions
  resources :tests  do
    resources :questions
  end
  #/tests/id/students
  resources :teachers  do
    resources :students
  end
  #/tests/id/tests
  resources :teachers  do
    resources :tests
  end
end

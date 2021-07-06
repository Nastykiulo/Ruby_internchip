Rails.application.routes.draw do
  resources :answers
  resources :questions
  resources :students
  resources :teachers
  resources :tests
  #get 'home/index'
root 'home#index'
get 'home/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :fellow_topics
  resources :fellows
  resources :answers
  resources :questions
  resources :topics
  get 'home/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'courses#index'
  resources :courses
  resources :instructors




  # Defines the root path route ("/")
  # root "articles#index"
end

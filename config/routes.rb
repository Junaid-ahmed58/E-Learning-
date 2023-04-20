Rails.application.routes.draw do
  devise_for :instructors
  root to: 'courses#index'
  resources :courses
end

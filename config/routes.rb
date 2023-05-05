Rails.application.routes.draw do
  devise_for :users
  devise_for :instructors
  
  resources :users, path: '/courses/users'
  resources :courses
  resources :lessons

  namespace :users do
    resources :enrollments
    resources :courses do
      resources :reviews
      collection do
        get 'in_progress'
      end
    end
  end

  root to: 'courses#index'
end

Rails.application.routes.draw do
	devise_for :users
	
  resources :users, path: '/courses/users'
	namespace :users do
		resources :courses
	end

	devise_for :instructors
	root to: 'courses#index'

  resources :courses do
		resources :enrollments
	end
  resources :lessons
end

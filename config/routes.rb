Rails.application.routes.draw do
  devise_for :users
  resources :users, path: '/courses/users'
  namespace :users do
    resources :courses do
      collection do
				get 'in_progress'
			end
	  end
     resources :enrollments
	end

	devise_for :instructors
	root to: 'courses#index'

  resources :courses
  resources :lessons
end

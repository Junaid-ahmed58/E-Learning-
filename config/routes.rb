Rails.application.routes.draw do
	devise_for :users
	authenticated :user do
    root to: 'users#show', as: :authenticated_root
  end
	devise_for :instructors
	root to: 'courses#index'
	post '/create_user_or_instructor', to: 'sessions#create_user_or_instructor'

  resources :courses do
		resources :enrollments
	end
  resources :lessons
end

Rails.application.routes.draw do
	devise_for :users
	authenticated :user do
    root to: 'users#show', as: :authenticated_root
  end
	devise_for :instructors 
	root to: 'courses#index'
  resources :courses do
		resources :enrollments
	end
  resources :lessons
end

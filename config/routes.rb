Rails.application.routes.draw do
	mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
	devise_for :users
	root 'welcome#index'

	resources :welcome, only: [:index]
	resources :activity, only: [:index, :show] do
		resources :city, only: [:index, :show]
	end
	resources :client, only: [:index, :show]
	resources :region, only: [:index, :show]
	resources :city, only: [:index, :show]

	namespace :v1 do
		resources :cities, only: [:index]
	end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
	mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
	mount Ckeditor::Engine => '/ckeditor'

	devise_for :users
	root 'welcome#index'

	resources :welcome, only: [:index]
	resources :activity, only: [:index, :show] do
		resources :city, only: [:index, :show]
	end
	resources :client, only: [:show]
	resources :region, only: [:index, :show]
	resources :city, only: [:show]
	resources :document, only: [:show]
	resources :contacts
	resources :excursions, only: [:show]

	namespace :v1 do
		resources :cities, only: [:index]
	end
end

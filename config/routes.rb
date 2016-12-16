Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :users do
    resource :profile
    resources :food_items
  end
  resources :ingredients
  get 'faq', to: 'pages#faq'
  get 'about', to: 'pages#about'
  get 'my_account', to: 'pages#my_account'
  resources :contacts, only: :create
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
end

Rails.application.routes.draw do
  resources :events
  resources :figures
  resources :dances
  resources :categories
  resources :levels
  resources :routines
  resources :packages
  resources :payments
  resources :lessons
  resources :calendar
  resources :students
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end

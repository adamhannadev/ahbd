Rails.application.routes.draw do
  resources :figures
  resources :dances
  resources :categories
  resources :levels
  resources :routines
  resources :packages
  resources :payments
  resources :lessons
  get 'calendar', to: 'lessons#calendar', as: 'calendar'
  resources :students
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end

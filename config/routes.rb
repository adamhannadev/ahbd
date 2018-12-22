Rails.application.routes.draw do
  resources :packages
  resources :payments
  resources :lessons
  get 'week_calendar', to: 'lessons#week_calendar'
  get 'month_calendar', to: 'lessons#month_calendar'
  resources :students
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end

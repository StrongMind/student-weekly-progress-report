Rails.application.routes.draw do
  resources :courses
  resources :teachers
  resources :students
  resources :reports
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "students#index"
end

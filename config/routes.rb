Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :instructors
      resources :batches
      resources :activities
      resources :groups
      resources :instructor_batches
      resources :locations
      resources :student_batches
      resources :student_groups
      resources :students
    end
  end
end

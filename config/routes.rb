Rails.application.routes.draw do
  resources :prompts
  resources :lessons
  resources :curriculums
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :lessons
  resources :curriculums
  resources :users do
    resources :prompts 
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

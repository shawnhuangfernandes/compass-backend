Rails.application.routes.draw do
  post '/users/find-user', to: 'users#findUser'
  
  resources :users do
    resources :prompts
  end

  


  resources :responses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

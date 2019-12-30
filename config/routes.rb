Rails.application.routes.draw do
  post '/users/find-user', to: 'users#findUser'
  
  resources :users do
    resources :prompts
  end

  


  resources :responses
end

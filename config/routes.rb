Rails.application.routes.draw do
  post '/find-user', to: 'users#findUser'
  
  resources :users do
    resources :prompts
  end

  


  resources :responses
end

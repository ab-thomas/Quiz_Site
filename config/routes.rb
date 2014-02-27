Quiz::Application.routes.draw do
  # get '/users', to: 'questions#index'
  resources :users
  resources :questions
  post 'questions/check'

  root 'questions#index'

end

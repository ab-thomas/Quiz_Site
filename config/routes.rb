Quiz::Application.routes.draw do
  resources :users
  resources :questions

  post 'questions/check'

  root 'questions#index'

end

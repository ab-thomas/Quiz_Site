Quiz::Application.routes.draw do
  resources :users
  resources :questions

  post 'questions/:id', to: 'questions#check', as: 'check'

  root 'questions#index'

end

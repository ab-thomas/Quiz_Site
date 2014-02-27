Quiz::Application.routes.draw do
  resources :users
  resources :questions
  post 'questions/:id', to: 'questions#check', as: 'check'
  post 'users/sign_in', to: 'users#sign_in', as: 'signin'
  post 'users/sign_out', to: 'users#sign_out', as: 'signout'
  root 'questions#index'
end

Quiz::Application.routes.draw do
  resources :users
  resources :quiz

  root 'quiz#index'
end

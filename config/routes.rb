Quiz::Application.routes.draw do
  resources :users
  get "quiz/index"

  root 'quiz#index'
end

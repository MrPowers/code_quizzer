Compoundblingapplication::Application.routes.draw do
  get "static_pages/about"

  resources :topics do
    resources :quizzes
  end

  resources :quizzes do
    resources :questions
  end

  devise_for :users

  root :to => 'topics#index'

  match 'quizzes/:id/admin_update' => 'quizzes#admin_update'
end

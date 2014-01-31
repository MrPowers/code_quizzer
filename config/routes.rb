Compoundblingapplication::Application.routes.draw do
  match 'stats' => 'user_statistics#index'

  get "static_pages/about"

  match 'set_answer_status', :to => 'answers#set_answer_status', :via => [:post]
  match 'get_answer', :to => 'answers#get_answer', :via => [:get]

  match 'grade_exam', :to => 'exams#grade_exam', :via => [:post]
  match 'cancel_exam', :to => 'exams#cancel_exam', :via => [:post]
  match 'graded_count', :to => 'exams#graded_count', :via => [:get]
  resources :exams, :only => [:index]
  match 'user_exams' => 'exams#user_exams'

  resources :families, :only => [:show]

  resources :topics, :only => [] do
    resources :quizzes, :only => [:show]
  end

  resources :quizzes, :only => [] do
    resources :questions
  end

  resources :quizzes, :only => [] do
    resources :comments, :only => [:create]
  end

  devise_for :users

  root :to => 'families#show', :id => 1
end

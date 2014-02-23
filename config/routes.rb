Compoundblingapplication::Application.routes.draw do
  root :to => 'families#show', :id => 1

  get 'stats' => 'user_statistics#index'

  get "static_pages/about"

  post 'set_answer_status', :to => 'answers#set_answer_status'
  get 'get_answer', :to => 'answers#get_answer'

  post 'grade_exam', :to => 'exams#grade_exam'
  post 'cancel_exam', :to => 'exams#cancel_exam'
  get 'graded_count', :to => 'exams#graded_count'
  resources :exams, :only => [:index]
  get 'user_exams' => 'exams#user_exams'

  resources :families, :only => [:show]

  resources :quizzes, :only => [] do
    resources :questions
  end

  resources :quizzes, :only => [] do
    resources :comments, :only => [:create]
  end

  devise_for :users

  resources :topics, :path => "", :only => [] do
    resources :quizzes, :path => "", :only => [:show]
  end
end

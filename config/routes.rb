Compoundblingapplication::Application.routes.draw do
  devise_for :users

  resources :challenges

  get 'blogs/index'

  root :to => 'families#show', :id => 'learn-programming'

  get 'javascript-book/:section_name', to: 'js_books#show', as: 'js_books'
  get 'javascript-book', to: 'js_books#index'

  get 'blog' => 'blogs#index'
  get 'about' => 'blogs#about'
  get 'contact' => 'blogs#contact'
  get 'blog/font-awesome-in-rails' => 'blogs#font_awesome'
  get 'blog/learning-vim' => 'blogs#learning_vim'

  get 'stats' => 'user_statistics#index'
  get 'static_pages/about'

  get '/challenges/:id/answer', to: 'challenges#answer', as: 'challenge_answer'
  post 'check_challenge_answer', :to => 'challenges#check_answer'

  post 'set_answer_status', :to => 'answers#set_answer_status'
  get 'get_answer', :to => 'answers#get_answer'

  resources :exams, :only => [:index]
  post 'grade_exam' => 'exams#grade_exam'
  post 'cancel_exam' => 'exams#cancel_exam'
  get 'graded_count' => 'exams#graded_count'
  get 'user_exams' => 'exams#user_exams'

  resources :families, :path => '' do
    resources :families, :only => [:show]
  end

  resources :quizzes, :only => [] do
    resources :questions
  end

  resources :quizzes, :only => [] do
    resources :comments, :only => [:create]
  end

  resources :topics, :path => '', :only => [] do
    resources :quizzes, :path => '', :only => [:show]
  end
end

Rails.application.routes.draw do
  get 'answers/index'

  get 'answers/new'

  get 'answers/show'

  get 'answers/edit'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'

  root :to => 'welcome#index'
    resources :questions do
      resources :answers
    end
end

Rails.application.routes.draw do
  resources :rounds
  resources :workouts do
    resources :exercises do
      resources :rounds
    end
  end
  resources :users
  root 'sessions#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post 'logout', to: 'sessions#destroy'
  get '/logout' => 'sessions#destroy'

  get '/workouts' => 'workout_dashboards#index'
end

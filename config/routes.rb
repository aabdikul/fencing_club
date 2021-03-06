Rails.application.routes.draw do
  resources :lessons

  resources :coaches do 
  	resources :lessons, only: [:new, :show, :index]
  end
  resources :students

  get '/auth/:provider/callback' => "sessions#create"

  get '/login' => "sessions#new"
  post '/login' => "sessions#create"
  get '/logout' => "sessions#destroy"
  delete '/logout' => "sessions#destroy"

  get '/most_lessons' => "coaches#most"

  root "application#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

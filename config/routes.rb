Rails.application.routes.draw do
  resources :lessons

  resources :coaches do 
  	resources :lessons, only: [:new]
  end
  resources :students

  root "application#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  post 'users/login', to: 'sessions#create', as: "user_login"
  post 'users/new', to: 'users#create'
  get 'users/login', to: 'users#login'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

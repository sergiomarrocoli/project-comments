Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'projects#index'

  devise_for :users

  resources :comments, only: [:create]
  resources :projects
end

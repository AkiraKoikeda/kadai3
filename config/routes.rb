Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:new, :index, :show]
  resources :books, only: [:new, :create, :index, :show, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"
  get 'homes/about', as: 'about'


end
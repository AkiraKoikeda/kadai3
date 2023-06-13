Rails.application.routes.draw do
  devise_for :users
  resources :application, only: [:new, :update]
  resources :users, only: [:new, :index, :show, :edit, :update]
  resources :books, only: [:create, :index, :show, :edit, :destroy, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"
  get 'homes/about', as: 'about'


end

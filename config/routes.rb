Rails.application.routes.draw do
  root to: "home#top"
  get 'home/top' => 'homes#top'
  get 'home/about' => 'home#about', as: 'about'

  devise_for :users
  resources :application, only: [:new, :update]
  resources :users, only: [:new, :index, :show, :edit, :update]
  resources :books, only: [:create, :index, :show, :edit, :destroy, :update]
  # For details on the DSL




end

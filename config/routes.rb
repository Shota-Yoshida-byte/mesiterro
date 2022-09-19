Rails.application.routes.draw do
  get 'bookes/new'
  get 'bookes/show'
  get 'bookes/edit'
  devise_for :users
  root to: 'homes#top'
  get "homes/about" => "homes#about", as: "about"
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show, :edit, :update]
end
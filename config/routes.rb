Rails.application.routes.draw do
  devise_for :users
  resources :posts
  root 'home#index'
  get 'posts/new', to: 'posts#new'
  get 'home/about', to: 'home#about'
end

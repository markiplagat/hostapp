Rails.application.routes.draw do
  resources :posts
  root 'home#index'
  get 'posts/new', to: 'posts#new'
  get 'home/about', to: 'home#about'
end

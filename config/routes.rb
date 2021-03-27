Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :comments
  end
  root 'home#index'
  get 'posts/new', to: 'posts#new'
  get 'home/about', to: 'home#about'
end

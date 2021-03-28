Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  resources :posts do
    resources :comments
  end
  get 'posts/new', to: 'posts#new'
  get 'home/about', to: 'home#about'
end

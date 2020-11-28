Rails.application.routes.draw do
  devise_for :users
  get 'mypage', to: 'posts#mypage'
  root "posts#index"
  resources :users, only: [:edit, :update]
  resources :posts
end

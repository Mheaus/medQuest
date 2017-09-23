Rails.application.routes.draw do
  devise_for :users
  root 'user_badges#index'
  resources :user_badges, only: [:index, :show]
end

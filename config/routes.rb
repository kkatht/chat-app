Rails.application.routes.draw do
  devise_for :users
 root to: 'rooms#index'
 resources :users, only: [:edit, :update]
 resources :rooms, only: [:new, :create, :destroy] do
   resources :messages, onlry: [:index, :create]
 end
end

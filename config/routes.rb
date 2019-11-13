Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:index, :new, :create]
  end
  namespace :admin do
    resources :restaurants, only: [:index]
  end
  resources :reviews, only: [:show, :edit, :update, :destroy]
end

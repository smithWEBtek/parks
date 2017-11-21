Rails.application.routes.draw do
  resources :reviews
  root to: 'parks#index'

  resources :parks, only: [:index, :show]
end

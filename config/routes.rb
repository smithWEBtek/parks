Rails.application.routes.draw do
  root to: 'parks#index'

  resources :parks, only: [:index, :show] do
    resources :reviews, only: [:create, :edit, :update]
  end
end

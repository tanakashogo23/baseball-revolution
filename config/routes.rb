Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  resources :posts, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
    collection do
      get 'rule'
    end
      resources :comments, only: :create
    end
end

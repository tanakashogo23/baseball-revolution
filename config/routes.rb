Rails.application.routes.draw do
  root to: "posts#index"
  resources :posts, only: [:index, :new, :create] do
    collection do
      get 'rule'
    end
  end
end

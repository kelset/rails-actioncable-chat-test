Rails.application.routes.draw do
  devise_for :users

  root 'pages#home'

  resources :conversations, only: [:create] do
    member do
      post :close
    end
  end
end

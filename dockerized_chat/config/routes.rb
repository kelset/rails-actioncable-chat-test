Rails.application.routes.draw do
  devise_for :users

  root 'pages#home'

  resources :conversations, only: [:create] do
    resources :messages, only: [:create]

    member do
      post :close
    end
  end

end

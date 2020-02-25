Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :spaces, only: [:index, :show, :new, :create, :destroy] do
    resources :reservations, only: [:new, :create]
  end
  
  resources :users, only: [:index, :show, :create, :new] do
    resources :reservations, only: [:index]
    resources :spaces, only: [:index]
  end

end

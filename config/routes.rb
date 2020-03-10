Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :spaces, only: [:index, :show, :new, :create, :destroy] do
    resources :reservations, only: [:new, :create] do
    end
    collection do
      get 'own_spaces' #this would be the controller action
      # get "reservations/:reservation_id/reviews", to: "reviews#index"
    end
  end

  resources :reservations, only: [:create, :new] do
    resources :reviews,  only: [:create, :new]
  end

  resources :users, only: [:index, :show, :create, :new] do
    resources :reservations, only: [:index]
    resources :spaces, only: [:index]
  end

  resources :reservations, only: [:show] do #In this case it has to be outside because of the path
    collection do
      get 'own_reservations'
    end
  end

  resources :orders, only: [:show, :create]
end


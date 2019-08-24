Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }

  root to: 'events#index'

  resources :organisers, only: [:show] do
    resources :events, only: [:show, :create, :update]
  end

  # User and messaging routes
  resources :users, only:[:show] do
    resources :organisers, only: [:create, :update]
    resources :chats, only:[:index, :create, :show]
  end

  resources :messages, only:[:create]

  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'

end

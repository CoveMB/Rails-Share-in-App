Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }

  root to: 'events#index'

  # Organiser and event routes
  resources :organisers, only: [:show] do
    resources :events, only: [:show] do
      resources :user_events, only: [:update, :destroy]
    end
  end

  # User and messaging routes
  resources :users, only:[:show] do
    resources :chats, only:[:index, :create, :show]
  end

  resources :messages, only:[:create]

  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'

end

Rails.application.routes.draw do
  root "chat_rooms#index"

  resources :chat_rooms, only: [:index, :create, :show]
  resources :messages, only: [:create]

  mount ActionCable.server => '/cable'
end

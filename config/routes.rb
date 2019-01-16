Rails.application.routes.draw do
  root 'heartbeat#index'

  resources :branches
end

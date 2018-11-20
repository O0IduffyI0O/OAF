Rails.application.routes.draw do
  root to: 'pages#home'
  resources :offers
  resources :projects, only: [:index, :show]
  resources :orders
end
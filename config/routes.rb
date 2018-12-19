Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :offers
  resources :projects do
    resource :orders
  end
end
Rails.application.routes.draw do
  root to: 'pages#home'
  resources :offers
  resources :projects do
    resource :orders
  end
end
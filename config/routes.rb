Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/about/download_pdf', to: 'pages#download_pdf'
  resources :offers
  resources :projects do
    resources :orders
  end
end
Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :beers, only: [:new, :create, :show]

end

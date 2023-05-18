Rails.application.routes.draw do
  resources :pages
  root 'top#show'
  resources :users
  resources :projects

  mount Special::Engine => 'special'
end

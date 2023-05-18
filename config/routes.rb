Rails.application.routes.draw do
  root 'top#show'
  resources :users
  resources :projects
  resources :pages

  mount Special::Engine => 'special'
end

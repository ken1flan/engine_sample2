Rails.application.routes.draw do
  root 'top#show'
  resources :users
  resources :projects

  mount Special::Engine => 'special'
end

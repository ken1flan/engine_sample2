Rails.application.routes.draw do
  root 'top#show'
  resources :users
end

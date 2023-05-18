Rails.application.routes.draw do
  root 'projects#index'
  resources :projects
  resources :users
  resources :pages

  mount Special::Engine => "/special"
end

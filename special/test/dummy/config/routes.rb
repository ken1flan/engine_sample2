Rails.application.routes.draw do
  root 'projects#index'
  resources :projects
  resources :users

  mount Special::Engine => "/special"
end

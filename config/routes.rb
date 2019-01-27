Rails.application.routes.draw do
  root 'welcome#index'
  get 'welcome/index'

  resources :tasks

  get 'tasks', to: 'tasks#index'
end

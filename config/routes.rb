Rails.application.routes.draw do
  root 'welcome#index'
  get 'welcome/index'

  get 'tasks', to: 'tasks#index', as: :tasks
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'
  delete 'tasks/:id', to: 'tasks#destroy', as: :destroy_task
  get 'tasks/:id', to: 'tasks#show', as: :task
  put 'complete_task', to: 'tasks#complete', as: :complete_tasks

  get 'tasks', to: 'tasks#index'
end

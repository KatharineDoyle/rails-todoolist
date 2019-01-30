Rails.application.routes.draw do
  root 'welcome#index'
  get 'welcome/index'

  get 'tasks', to: 'tasks#index', as: :tasks
  post 'tasks', to: 'tasks#create'
  get 'tasks/new', to: 'tasks#new', as: :new

  get 'tasks/:id', to: 'tasks#show', as: :task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task

  patch 'tasks/:id', to: 'tasks#update'
  delete 'tasks/:id', to: 'tasks#destroy', as: :destroy_task

  put 'complete_task', to: 'tasks#complete', as: :complete_tasks
end

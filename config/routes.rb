Rails.application.routes.draw do
  root 'welcome#index'
  resources :tasks, only: [:show, :index, :edit, :update, :new, :create, :destroy]
end

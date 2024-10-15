Rails.application.routes.draw do
  # Define your routes here
  get 'tasks', to: 'tasks#index'
  get 'tasks/new', to: 'tasks#new', as: 'new_task'
  post 'tasks', to: 'tasks#create'
  get 'tasks/:id', to: 'tasks#show', as: 'task'
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch 'tasks/:id', to: 'tasks#update'
  delete 'tasks/:id', to: 'tasks#destroy'

  # Alternatively, you can use resources if you want to automatically define standard routes
  # resources :tasks
end

ToDo::Application.routes.draw do

  # resources :tasks
  
  get    '/',           controller: 'tasks', action: 'index', as: :tasks
  post   '/',           controller: 'tasks', action: 'create' 
  
  get    '/:id/edit',   controller: 'tasks', action: 'edit',  as: :edit_task
  get    '/:id',        controller: 'tasks', action: 'show', as: :task
  put    '/:id',        controller: 'tasks', action: 'update' 
  
  delete '/:id',        controller: 'tasks', action: 'delete'

end

Author::Engine.routes.draw do
  root 'dashboard#index'

  resources :articles
end

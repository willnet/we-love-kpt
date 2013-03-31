WeLoveKpt::Application.routes.draw do
  root to: 'main#index'

  resources :projects
end

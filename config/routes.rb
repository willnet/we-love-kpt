WeLoveKpt::Application.routes.draw do
  root to: 'main#index'

  resources :projects do
    resources :kpts do
      resources :posts
    end
  end
end

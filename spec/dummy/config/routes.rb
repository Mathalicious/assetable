Dummy::Application.routes.draw do
  mount Assetable::Engine, at: '/assetable'

  resources :posts

  root 'posts#index'
end

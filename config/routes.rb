Assetable::Engine.routes.draw do
  resources :assets do
    post :insert, on: :collection
  end
  resources :external_services
end

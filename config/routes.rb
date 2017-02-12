SmartDataMapper::Engine.routes.draw do
  resources :file_mappers
  resources :files, only: [:new, :show, :create] do
    member do
      get :import
    end
  end
end

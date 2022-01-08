Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'empleados/index'
      post 'empleados/create'
      get '/show/:id', to: 'empleados#show'
      delete '/destroy/:id', to: 'empleados#destroy'
    end
  end
  root 'homepage#index'
  get '/*path' => 'homepage#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

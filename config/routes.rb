Rails.application.routes.draw do
  resources :dishes
  devise_for :users
  root to: 'home#index'
  resources :clients

  resources :products
  resources :sales
  get 'buscador_productos/:termino', to: 'products#buscador'
  post 'add_item_venta', to: 'sales#add_item'
  get 'buscador_clientes/:termino', to: 'clients#buscador'
  post '/add_cliente_venta/', to: 'sales#add_cliente'

  resources :profiles, only: [:show, :edit, :update]

  post '/search', to: 'search#results'
end

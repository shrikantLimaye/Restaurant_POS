Rails.application.routes.draw do
  resources :order_items
  get 'cart', to: 'cart#show'
  devise_for :users

  root to: 'product#list'
  get 'product/show'
  get 'product/new'
  get 'product/create'
  post 'product/create'
  get 'product/edit'
  get 'product/update'
  patch 'product/update'
  get 'product/delete'
  get 'categories/show'
  post 'categories/show'
  get 'product/page'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

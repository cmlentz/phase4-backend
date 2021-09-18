Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :sales, only: :create
  resources :animals, only: [:index, :destroy]
  resources :shops, only: [:index, :show, :create]
end

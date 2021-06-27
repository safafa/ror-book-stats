Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :books do
    get :external, on: :collection
  end
  resources :groups
  
  root 'books#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.
end

Rails.application.routes.draw do
  devise_for :users
  resources :users, only:[:show]
  resources :books, only:[:show,:index,:new,:create,:edit,:update,:destroy] do
    get :external, on: :collection
  end
  resources :groups, only:[:show,:index,:new,:create,:edit,:update,:destroy]
  
  root 'books#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.
end

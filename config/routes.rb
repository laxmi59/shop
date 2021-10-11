Rails.application.routes.draw do
  get 'home/index', as: "home"
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  #get 'users/index'
  #get 'products/show_all'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  resources :categories  do
     #get 'show_image', :on => :collection
  end
  resources :products
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
end

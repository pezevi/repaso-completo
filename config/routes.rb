Rails.application.routes.draw do
  resources :quotes
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }

  resources :clients
  resources :products
  root to: "products#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

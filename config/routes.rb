Rails.application.routes.draw do
  resources :orders
  resources :products

  resource :shopping_carts do
    get 'add/:id' => :add, as: :add_to
  end
  resources :addresses
  devise_for :users

  root 'home#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

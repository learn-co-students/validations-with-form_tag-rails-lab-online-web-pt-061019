Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :authors, only: [:edit, :new, :create, :show, :update]
  resources :posts, only: [:edit, :new, :create, :show, :update]
end

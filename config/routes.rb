Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :works
  resources :directors
  root to: 'works#index'
  # get 'home/index' => 'home#index'
end

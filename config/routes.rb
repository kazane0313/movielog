Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :works
  resources :directors

  resources :works do
    get 'higher' => 'works#move_higher', as: 'higher', on: :member
  end

  root to: 'works#index'
  # get 'home/index' => 'home#index'
  namespace :login do
    resource :profile
  end
end

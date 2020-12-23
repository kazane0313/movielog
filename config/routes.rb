Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :directors, only: [:index, :show]

  resources :works, only: [:index, :show] do
    get 'higher' => 'works#move_higher', as: 'higher', on: :member
  end

  root to: 'works#index'
  # get 'home/index' => 'home#index'
  namespace :login do
    resources :works, except: [:index, :show]
    resources :directors, except: [:index, :show]
    resource :profile
  end
end

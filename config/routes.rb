Rails.application.routes.draw do

  root 'welcome#index'

  resources :info, only:[:index]

  resources :sandbox, only: [:index]

  resources :tictoe, only: [:index]

  resources :design, only: [:index]

end

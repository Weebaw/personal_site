Rails.application.routes.draw do

  root 'welcome#index'

  get "sign-up", to: "registrations#new"
  post "sign-up", to: "registrations#create"

  get "sign-out", to: "authentication#destroy"

  get "sign-in", to: "authentication#new"
  post "sign-in", to: "authentication#create"


  resources :info, only:[:index]

  resources :sandbox, only: [:index]

  resources :tictoe, only: [:index]

  resources :design, only: [:index]

  resources :comments



end

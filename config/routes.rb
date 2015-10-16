Rails.application.routes.draw do

  root 'welcome#index'

  resources :info, only:[:index]
end

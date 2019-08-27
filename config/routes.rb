Rails.application.routes.draw do
  devise_for :premia, controllers: {
    registrations: 'premia/registrations'
  }

  get 'pages/index'
  resources :pages
  root 'pages#index'

  get 'pages/types'
  get 'pages/game'
  get 'pages/invitade'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

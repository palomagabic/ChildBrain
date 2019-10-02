Rails.application.routes.draw do
  devise_for :users

  get 'pages/index'
  root 'pages#index'

  get 'pages/clients'
  get 'pages/contact'
  get 'pages/types'
  get 'pages/game'
  get 'pages/invitade'
  get 'pages/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

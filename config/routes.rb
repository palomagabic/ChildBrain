Rails.application.routes.draw do
  get 'pages/index'
  root 'pages#index'
  get 'pages/signin'
  get 'pages/signup'
  get 'pages/types'
  get 'pages/game'
  get 'pages/invitade'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :whatsapps
  resources :mensalidades
  devise_for :users
  resources :users
  resources :pagamentos
  get 'paginas/inicio'
  get 'paginas/ajuda'
  resources :inquilinos
  root 'inquilinos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

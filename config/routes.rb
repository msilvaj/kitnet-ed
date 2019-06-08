Rails.application.routes.draw do
  root 'paginas#inicio'
  get 'paginas/inicio'
  get 'paginas/ajuda'
  resources :inquilinos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

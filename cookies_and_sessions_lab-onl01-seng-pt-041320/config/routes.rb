Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :index, only: [:index]
  get '/', to: 'products#index'
  post '/add', to: 'products#add'
end

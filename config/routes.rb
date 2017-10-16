Rails.application.routes.draw do
  get 'welcome/index'
  #resources :models
  root 'welcome#index'

  resources :products, only: [:index, :show] do
    resources :records, only: :index
  end
  
  post '/models', to: "models#select"
  
  namespace :upload do
    get 'file'
    post 'done'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

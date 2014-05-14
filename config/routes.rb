Rails.application.routes.draw do

  get 'senator/index'

  get 'senator/show'

  resources :users

  resources :states do
    resources :senators, shallow: true
    resources :representatives, shallow: true
  end
  
end

Rails.application.routes.draw do

  get 'welcome/index'

  resources :users

  resources :states do
    resources :senators, shallow: true
    resources :representatives, shallow: true
  end

  root 'welcome#index'
  
end

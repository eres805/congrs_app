Rails.application.routes.draw do

  resources :users

  resources :states do
    resources :senators, shallow: true
    resources :representatives, shallow: true
  end
  
end

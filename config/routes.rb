Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :api do
    get 'index', to: 'api#show'
    get 'api', to: 'api#api'
  end
end

Rails.application.routes.draw do
  resources :payouts, only: [:index]
  resources :licenses, only: [:index]

  namespace :api do
    namespace :v1 do
      post 'payouts', to: 'payouts#create'
      post 'licenses', to: 'licenses#create'
    end
  end
end

Rails.application.routes.draw do
  resources :payouts, only: [:index]

  namespace :api do
    namespace :v1 do
      post 'payouts', to: 'payouts#create'
    end
  end
end

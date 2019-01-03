Rails.application.routes.draw do
  resources :payouts, only: [:index]
  resources :monthly_licenses, only: [:index]
  resources :yearly_licenses, only: [:index]

  namespace :api do
    namespace :v1 do
      post 'payouts', to: 'payouts#create'
      post 'monthly-licenses', to: 'monthly_licenses#create'
      post 'yearly-licenses', to: 'yearly_licenses#create'
    end
  end
end

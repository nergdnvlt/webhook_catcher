Rails.application.routes.draw do
  resources :payouts, only: [:index]
  resources :monthly_licenses, only: [:index]
  resources :yearly_licenses, only: [:index]

  namespace :subs do
    # resources :monthly_subscriptions, only: [:index], as: 'monthly-subscriptions'
    get 'monthly-subscriptions', to: 'monthly_subscriptions#index'
  end

  namespace :api do
    namespace :v1 do
      post 'payouts', to: 'payouts#create'
      post 'monthly-licenses', to: 'monthly_licenses#create'
      post 'yearly-licenses', to: 'yearly_licenses#create'

      namespace :subs do
        post 'monthly-subscriptions', to: 'monthly_subscriptions#create'
      end
    end
  end
end

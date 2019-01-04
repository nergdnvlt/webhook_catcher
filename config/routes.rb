Rails.application.routes.draw do
  resources :payouts, only: [:index]
  resources :monthly_licenses, only: [:index]
  resources :yearly_licenses, only: [:index]

  namespace :subs do
    # resources :monthly_subscriptions, only: [:index], as: 'monthly-subscriptions'
    get 'monthly-subscriptions', to: 'monthly_subscriptions#index'
    get 'yearly-subscriptions', to: 'yearly_subscriptions#index'
  end

  namespace :api do
    namespace :v1 do
      post 'payouts', to: 'payouts#create'
      post 'monthly-licenses', to: 'monthly_licenses#create'
      post 'yearly-licenses', to: 'yearly_licenses#create'

      namespace :subs do
        post 'monthly-subscriptions', to: 'monthly_subscriptions#create'
        post 'yearly-subscriptions', to: 'yearly_subscriptions#create'

        get 'monthly-subscriptions/:id', to: 'monthly_subscriptions#show'
        get 'yearly-subscriptions/:id', to: 'yearly_subscriptions#show'

        post 'deac-monthly-subscriptions', to: 'monthly_subscriptions#delete'
        post 'deac-yearly-subscriptions', to: 'yearly_subscriptions#delete'
      end
    end
  end
end

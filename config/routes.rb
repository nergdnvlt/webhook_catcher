Rails.application.routes.draw do
  resources :payouts, only: [:index]
end

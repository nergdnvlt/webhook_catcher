class PayoutsController < ApplicationController
  def index
    @payouts = Payout.order(updated_at: :desc)
  end
end

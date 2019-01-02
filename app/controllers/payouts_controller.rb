class PayoutsController < ApplicationController
  def index
    @payouts = Payout.order(updated_at: :dsc)
  end
end

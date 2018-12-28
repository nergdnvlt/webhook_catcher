class PayoutsController < ApplicationController
  def index
    @payouts = Payout.all.reverse
  end
end

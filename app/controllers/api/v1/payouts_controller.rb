class Api::V1::PayoutsController < ApplicationController
  def create
    payout = PayoutService.create(params['payout'])
    render json: payout, status: 200
  end
end

class Api::V1::PayoutsController < ApiController
  def create
    binding.pry
    payout = PayoutService.create(params['events'][0])
    render json: payout, status: 200
  end
end

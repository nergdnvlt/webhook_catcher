class Api::V1::Subs::YearlySubscriptionsController < ApiController
  def create
    sub = YearlySubService.create(params)
    render json: sub, status: 200
  end
end

class Api::V1::Subs::MonthlySubscriptionsController < ApiController
  def create
    sub = MonthlySubService.create(params)
    render json: sub, status: 200
  end
end

class Api::V1::Subs::MonthlySubscriptionsController < ApiController
  def create
    sub = MonthlySubService.create(params)
    render json: license.as_json, status: 200
  end
end

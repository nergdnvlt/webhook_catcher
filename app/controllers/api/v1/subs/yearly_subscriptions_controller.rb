class Api::V1::Subs::YearlySubscriptionsController < ApiController
  def create
    sub = YearlySubService.create(params)
    render json: sub, status: 200
  end

  def show
    sub = YearlySubscription.find_by(sub_id: params['id'])
    render json: sub
  end

  def delete
    sub_id = params['SubscriptionReference']
    sub = YearlySubscription.find_by(sub_id: sub_id)
    sub.update(active: false)
    render json: sub, status: 200
  end
end

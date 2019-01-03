class Subs::MonthlySubscriptionsController < ApplicationController
  def index
    @subs = MonthlySubscription.order(updated_at: :desc)
  end
end

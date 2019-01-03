class Subs::YearlySubscriptionsController < ApplicationController
  def index
    @subs = YearlySubscription.order(updated_at: :desc)
  end
end

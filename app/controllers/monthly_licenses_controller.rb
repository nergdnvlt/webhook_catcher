class MonthlyLicensesController < ApplicationController
  def index
    @licenses = MonthlyLicense.order(updated_at: :desc)
  end
end

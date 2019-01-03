class YearlyLicensesController < ApplicationController
  def index
    @licenses = YearlyLicense.order(updated_at: :desc)
  end
end

class Api::V1::MonthlyLicensesController < ApiController
  def create
    licenses = MonthlyLicenseService.create(params)
    render plain: licenses, status: 200
  end
end

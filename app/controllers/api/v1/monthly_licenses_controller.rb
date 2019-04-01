class Api::V1::MonthlyLicensesController < ApiController
  def create
    license = MonthlyLicenseService.create(params)
    render json: license.license, status: 200
  end
end

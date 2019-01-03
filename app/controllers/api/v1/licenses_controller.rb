class Api::V1::MonthlyLicensesController < ApiController
  def create
    license = MonthlyLicenseService.create(params)
    render json: license, status: 200
  end
end

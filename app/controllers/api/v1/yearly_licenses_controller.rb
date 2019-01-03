class Api::V1::YearlyLicensesController < ApiController
  def create
    license = YearlyLicenseService.create(params)
    render json: license.as_json, status: 200
  end
end

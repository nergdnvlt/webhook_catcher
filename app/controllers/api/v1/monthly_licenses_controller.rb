class Api::V1::MonthlyLicensesController < ApiController
  def create
    license = MonthlyLicenseService.create(params)
    # render json: license.as_json, status: 200
    render plain: license.license_key, status: 200
  end
end

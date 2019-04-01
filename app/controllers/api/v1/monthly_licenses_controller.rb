class Api::V1::MonthlyLicensesController < ApiController
  def create
    license = MonthlyLicenseService.create(params)
    render text: license.license_key, status: 200
  end
end

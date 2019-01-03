class Api::V1::LicensesController < ApiController
  def create
    license = LicenseService.create(params['events'][0])
    render json: license, status: 200
  end
end

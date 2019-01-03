class LicensesController < ApplicationController
  def index
    @licenses = License.order(updated_at: :desc)
  end
end

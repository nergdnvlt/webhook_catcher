class MonthlyLicense < ApplicationRecord
  def as_json
    {
      license: license_key
    }
  end
end

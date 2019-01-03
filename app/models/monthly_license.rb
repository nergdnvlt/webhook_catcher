class MonthlyLicense < ApplicationRecord
  def as_json
    {
      hash: hash
    }
  end
end

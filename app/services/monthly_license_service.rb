class MonthlyLicenseService
  def self.create(attrs)
    new(attrs).create
  end

  def create
    MonthlyLicense.create!(data: @data)
  end

  def initialize(attrs)
    @data = attrs
  end
end

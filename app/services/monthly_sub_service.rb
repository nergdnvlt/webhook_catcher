class MonthlyLicenseService
  def self.create(attrs)
    new(attrs).create
  end

  def create
    MonthlySubscription.create!(data: @data)
  end

  def initialize(attrs)
    @data = attrs
  end
end
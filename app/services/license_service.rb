class LicenseService
  def self.create(attrs)
    new(attrs).create
  end

  def create
    Payout.create!(data: @data)
  end

  def initialize(attrs)
    @data = attrs
  end
end

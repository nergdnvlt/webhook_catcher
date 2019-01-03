class LicenseService
  def self.create(attrs)
    new(attrs).create
  end

  def create
    Payout.create!(@attrs)
  end

  def initialize(attrs)
    @attrs = attrs
  end
end

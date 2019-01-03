require 'digest'

class MonthlyLicenseService
  def self.create(attrs)
    new(attrs).create
  end

  def create
    MonthlyLicense.create!(data: @data, hash: @hash)
  end

  def initialize(attrs)
    @data = attrs
    @hash = Digest::SHA2.new(256).hexdigest(attrs)
  end
end

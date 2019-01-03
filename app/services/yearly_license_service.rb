require 'digest'

class YearlyLicenseService
  def self.create(attrs)
    new(attrs).create
  end

  def create
    YearlyLicense.create!(data: @data, license_key: @new_hash)
  end

  def initialize(attrs)
    @data = attrs
    @new_hash = Digest::SHA2.new(256).hexdigest(attrs.to_s)
  end
end
require 'digest'

class MonthlyLicenseService
  def self.create(attrs)
    new(attrs).create
  end

  def create
    MonthlyLicense.create!(data: @data, license_key: @new_hash)
  end

  def initialize(attrs)
    @data = attrs
    @new_hash = format_hash(attrs.to_s)
  end

  def create_hash(attrs)
    Digest::SHA2.new(256).hexdigest(attrs.to_s)
  end

  def format_hash(attrs)
    create_hash(attrs).to_s[0..9]
  end
end

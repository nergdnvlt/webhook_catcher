require 'digest'

class MonthlyLicenseService
  def self.create(attrs)
    new(attrs).create
  end

  def create
    @licenses
  end

  def initialize(attrs)
    @data = attrs
    @fulfillments = create_hash
    @licenses = format_hash
    create_licenses
  end

  def create_licenses
    @fulfillments.each do |fulfillment|
      MonthlyLicense.create!(data: @data, license_key: fulfillment)
    end
  end

  def create_hash
    quantity = @data["quantity"].to_i
    @fulfillments = []
    quantity.times do
      range_beg = rand(0..10)
      range_end = range_beg + 9
      @fulfillments << Digest::SHA2.new(256).hexdigest(@data.to_s).to_s[range_beg..range_end]
    end
    @fulfillments
  end

  def format_hash
    create_hash.join("\n")
  end
end

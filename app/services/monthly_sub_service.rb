class MonthlySubService
  def self.create(attrs)
    new(attrs).create
  end

  def create
    MonthlySubscription.create!(data: @data, sub_id: @sub_id)
  end

  def initialize(attrs)
    @data = {
      order_id: attrs['order_id'],
      quantity: attrs['quantity'],
      internalProductName: attrs['internalProductName'],
      security_request_hash: attrs['security_request_hash'],
      subscriptionReference: attrs['subscriptionReference'],
    }
    @sub_id = attrs['subscriptionReference']
  end
end
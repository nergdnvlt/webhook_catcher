class MonthlySubService
  def self.create(attrs)
    new(attrs).create
  end

  def create
    MonthlySubscription.create!(data: @data, sub_id: @sub_id)
  end

  def initialize(attrs)
    @data = {
      subscriptionEndDate: attrs['SubscriptionEndDate'],
      subscriptionCustomerUrl: attrs['SubscriptionCustomerUrl'],
      subscriptionReference: attrs['SubscriptionReference'],
      subscriptionReferrer: attrs['SubscriptionReferrer'],
      subscriptionIsTest: attrs['SubscriptionIsTest'],
      subscriptionQuantity: attrs['SubscriptionQuantity'],
      security_data: attrs['security_data'],
      security_hash: attrs['security_hash'],
      security_request_hash: attrs['security_request_hash'],
    }
    @sub_id = attrs['SubscriptionReference']
  end
end
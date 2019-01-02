class PayoutService
  def self.create(attrs)
    new(attrs).create
  end

  def create
    Payout.create!(@new_attrs)
  end

  def initialize(attrs)
    @new_attrs = {
      id: attrs['events'][0]['id'],
      order_id: attrs['events'][0]['data']['orderId'],
      reference: attrs['events'][0]['data']['reference'],
      account: attrs['events'][0]['data']['account'],
      subscriptions: attrs['events'][0]['data']['subscriptions'],
      tax: attrs['events'][0]['data']['subtractions']['tax']['amount'].to_f,
      tax_percentage: attrs['events'][0]['data']['subtractions']['tax']['percentage'].to_f,
      fastspring_fee: attrs['events'][0]['data']['subtractions']['fastspring']['amount'].to_f,
      payee: attrs['events'][0]['data']['payouts'][0]['payee'],
      subtotal: attrs['events'][0]['data']['payouts'][0]['subtotal'].to_f
    }
  end
end

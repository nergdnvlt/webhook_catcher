class PayoutService
  def self.create(attrs)
    new(attrs).create
  end

  def create
    Payout.create!(@new_attrs)
  end

  def initialize(attrs)
    @new_attrs = {
      id: attrs['id'],
      order_id: attrs['data']['orderId'],
      reference: attrs['data']['reference'],
      account: attrs['data']['account'],
      subscriptions: attrs['data']['subscriptions'],
      tax: attrs['data']['subtractions']['tax']['amount'].to_f,
      tax_percentage: attrs['data']['subtractions']['tax']['percentage'].to_f,
      fastspring_fee: attrs['data']['subtractions']['fastspring']['amount'].to_f,
      payee: attrs['data']['payouts'][0]['payee'],
      subtotal: attrs['data']['payouts'][0]['subtotal'].to_f
    }
  end
end

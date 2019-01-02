class PayoutService
  def self.create(attrs)
    new(attrs).create
  end

  def create
    Payout.create!(@new_attrs)
  end

  def initialize(attrs)
    @new_attrs = {
      order_id: attrs['orderId'],
      reference: attrs['reference'],
      account: attrs['account'],
      subscriptions: attrs['subscriptions'],
      tax: attrs['subtractions']['tax']['amount'].to_f,
      tax_percentage: attrs['subtractions']['tax']['percentage'].to_f,
      fastspring_fee: attrs['subtractions']['fastspring']['amount'].to_f,
      payee: attrs['payouts'][0]['payee'],
      subtotal: attrs['payouts'][0]['subtotal'].to_f
    }
  end
end

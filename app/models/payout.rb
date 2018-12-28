class Payout < ApplicationRecord
  validates_presence_of :order_id,
                        :reference,
                        :account,
                        :tax,
                        :tax_percentage,
                        :fastspring_fee,
                        :payee,
                        :subtotal
end

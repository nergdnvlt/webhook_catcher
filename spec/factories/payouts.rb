FactoryBot.define do
  factory :payout do
    order_id { "MyString" }
    reference { "MyString" }
    account { "MyString" }
    subscriptions { "MyString" }
    tax { 1.5 }
    tax_percentage { 1.5 }
    fastspring_fee { 1.5 }
    payee { "MyString" }
    subtotal { 1.5 }
  end
end

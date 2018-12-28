require 'faker'

FactoryBot.define do
  factory :payout do
    order_id { Faker::IDNumber.valid }
    reference { Faker::IDNumber.invalid }
    account { Faker::IDNumber.spanish_citizen_number }
    subscriptions { "MyString" }
    tax { Faker::Number.decimal(2, 2) }
    tax_percentage { Faker::Number.decimal(2, 2) }
    fastspring_fee { Faker::Number.decimal(2) }
    payee { Faker::StrangerThings.character }
    subtotal { Faker::Number.decimal(2) }
  end
end

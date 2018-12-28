require 'rails_helper'

describe Payout, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :order_id }
    it { should validate_presence_of :reference }
    it { should validate_presence_of :account }
    it { should validate_presence_of :tax }
    it { should validate_presence_of :tax_percentage }
    it { should validate_presence_of :fastspring_fee }
    it { should validate_presence_of :payee }
    it { should validate_presence_of :subtotal }
  end
end

require 'rails_helper'

describe 'Visit /payouts' do
  describe 'to see all payouts made' do
    it 'gives an index of all payouts' do
      payouts = create_list(:payout, 5)

      visit '/payouts'

      payouts.each do | payout |
        expect(page).to have_content(payout.order_id)
        expect(page).to have_content(payout.reference)
        expect(page).to have_content(payout.account)
        expect(page).to have_content(payout.tax)
        expect(page).to have_content(payout.tax_percentage)
        expect(page).to have_content(payout.payee)
        expect(page).to have_content(payout.subtotal)
      end
    end
  end
end
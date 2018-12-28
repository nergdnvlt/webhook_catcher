require 'rails_helper'

describe 'Payouts API' do
  # it 'creates a payout' do
  #   payout_params =
  #     {
  #       "orderId": "OtAv7fNKQ_SDbKz90fjC4w",
  #       "reference": "MACHINEFARM181226-4008-59338",
  #       "live": false,
  #       "order": "OtAv7fNKQ_SDbKz90fjC4w",
  #       "account": "spqefSHARBqZVyaN8zDYsA",
  #       "subscriptions": [
  #         "yNl-9ipMRB2_Nno3jRHn-A"
  #       ],
  #       "subtractions": {
  #         "tax": {
  #           "currency": "USD",
  #           "amount": 0,
  #           "percentage": 0
  #         },
  #         "fastspring": {
  #           "currency": "USD",
  #           "amount": 2.72,
  #           "percentage": 9.07
  #         }
  #       },
  #       "payouts": [
  #         {
  #           "payee": "machinefarm",
  #           "currency": "USD",
  #           "payout": "27.28",
  #           "subtotal": 27.28,
  #           "total": "30.00"
  #         }
  #       ]
  #     }
  #
  #   post 'api/v1/payouts', body: { payout: payout_params }
  #   payout = Payout.all.last
  #
  #   expect(response).to be_successful
  #   expect(payout.order_id).to eq('OtAv7fNKQ_SDbKz90fjC4w')
  #   expect(payout.payee).to eq('machinefarm')
  #   expect(payout.subtotal).to eq(27.28)
  # end
end
require 'rails_helper'

describe 'Payouts API' do
  # it 'creates a payout' do
  #   payout_params = {
  #     "events"=>
  #       [
  #         {
  #           "id"=>"auJ-KcEgSuS8qn9mhoaouw",
  #           "processed"=>false,
  #           "created"=>1546451820654,
  #           "type"=>"payoutEntry.created",
  #           "live"=>false,
  #           "data"=>
  #             {
  #               "orderId"=>"VUKSR_bWSSGOGm3HnNeHkQ",
  #               "reference"=>"MACHINEFARM190102-4008-95143",
  #               "live"=>false,
  #               "order"=>"VUKSR_bWSSGOGm3HnNeHkQ",
  #               "account"=>"iC2BukrURYi6Xmo5Z6ZEGQ",
  #               "subscriptions"=>[],
  #               "subtractions"=>
  #                 {
  #                   "tax"=>
  #                     {
  #                       "currency"=>"USD",
  #                       "amount"=>0.0,
  #                       "percentage"=>0.0},
  #                       "fastspring"=>
  #                         {
  #                           "currency"=>"USD",
  #                           "amount"=>1.54,
  #                           "percentage"=>15.4
  #                         }
  #                     },
  #                   "payouts"=>
  #                     [
  #                       {
  #                         "payee"=>"machinefarm",
  #                         "currency"=>"USD",
  #                         "payout"=>"8.46",
  #                         "subtotal"=>8.46,
  #                         "total"=>"10.00"
  #                       }
  #                     ]
  #             }
  #         }
  #       ],
  #         "payout"=>
  #           {
  #             "events"=>
  #               [
  #                 {
  #                   "id"=>"auJ-KcEgSuS8qn9mhoaouw",
  #                   "processed"=>false,
  #                   "created"=>1546451820654,
  #                   "type"=>"payoutEntry.created",
  #                   "live"=>false,
  #                   "data"=>
  #                     {
  #                       "orderId"=>"VUKSR_bWSSGOGm3HnNeHkQ",
  #                       "reference"=>"MACHINEFARM190102-4008-95143",
  #                       "live"=>false,
  #                       "order"=>"VUKSR_bWSSGOGm3HnNeHkQ",
  #                       "account"=>"iC2BukrURYi6Xmo5Z6ZEGQ",
  #                       "subscriptions"=>[],
  #                       "subtractions"=>
  #                         {
  #                           "tax"=>
  #                             {
  #                               "currency"=>"USD",
  #                               "amount"=>0.0,
  #                               "percentage"=>0.0
  #                             },
  #                           "fastspring"=>
  #                             {
  #                               "currency"=>"USD",
  #                               "amount"=>1.54,
  #                               "percentage"=>15.4
  #                             }
  #                         },
  #                       "payouts"=>
  #                         [
  #                           {
  #                             "payee"=>"machinefarm",
  #                             "currency"=>"USD",
  #                             "payout"=>"8.46",
  #                             "subtotal"=>8.46,
  #                             "total"=>"10.00"
  #                           }
  #                         ]
  #                     }
  #                 }
  #               ]
  #           }
  #         }
  #
  #   post '/api/v1/payouts', params: payout_params
  #   payout = Payout.all.last
  #
  #   expect(response).to be_successful
  #   expect(payout.order_id).to eq('VUKSR_bWSSGOGm3HnNeHkQ')
  #   expect(payout.payee).to eq('machinefarm')
  #   expect(payout.subtotal).to eq(8.46)
  # end
  it 'creates another payout' do
    payout_params = {"events"=>[{"id"=>"sA9KraX3TVmtbuaL43pL2Q", "processed"=>false, "created"=>1546456378788, "type"=>"payoutEntry.created", "live"=>false, "data"=>{"orderId"=>"BW7gpE25QRixk8DgQNxjNw", "reference"=>"MACHINEFARM190102-4008-39173", "live"=>false, "order"=>"BW7gpE25QRixk8DgQNxjNw", "account"=>"spqefSHARBqZVyaN8zDYsA", "subscriptions"=>["7aRKdtI_RTe2jul3l-pfNA"], "subtractions"=>{"tax"=>{"currency"=>"USD", "amount"=>0.0, "percentage"=>0.0}, "fastspring"=>{"currency"=>"USD", "amount"=>9.8, "percentage"=>6.53}}, "payouts"=>[{"payee"=>"machinefarm", "currency"=>"USD", "payout"=>"140.20", "subtotal"=>140.2, "total"=>"150.00"}]}}], "payout"=>{}}

    post '/api/v1/payouts', params: payout_params
    payout = Payout.all.last

    expect(response).to be_successful
    expect(payout.order_id).to eq('VUKSR_bWSSGOGm3HnNeHkQ')
    expect(payout.payee).to eq('machinefarm')
    expect(payout.subtotal).to eq(8.46)
  end
end
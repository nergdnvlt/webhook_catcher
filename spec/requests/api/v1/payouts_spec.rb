require 'rails_helper'

describe 'Payouts API' do
  it 'creates a payout' do
    # payout_params =
    #   {
    #     "orderId": "OtAv7fNKQ_SDbKz90fjC4w",
    #     "reference": "MACHINEFARM181226-4008-59338",
    #     "live": false,
    #     "order": "OtAv7fNKQ_SDbKz90fjC4w",
    #     "account": "spqefSHARBqZVyaN8zDYsA",
    #     "subscriptions": [
    #       "yNl-9ipMRB2_Nno3jRHn-A"
    #     ],
    #     "subtractions": {
    #       "tax": {
    #         "currency": "USD",
    #         "amount": 0,
    #         "percentage": 0
    #       },
    #       "fastspring": {
    #         "currency": "USD",
    #         "amount": 2.72,
    #         "percentage": 9.07
    #       }
    #     },
    #     "payouts": [
    #       {
    #         "payee": "machinefarm",
    #         "currency": "USD",
    #         "payout": "27.28",
    #         "subtotal": 27.28,
    #         "total": "30.00"
    #       }
    #     ]
    #   }

    payout_params = {
      "events"=>
        [
          {
            "id"=>"auJ-KcEgSuS8qn9mhoaouw",
            "processed"=>false,
            "created"=>1546451820654,
            "type"=>"payoutEntry.created",
            "live"=>false,
            "data"=>
              {
                "orderId"=>"VUKSR_bWSSGOGm3HnNeHkQ",
                "reference"=>"MACHINEFARM190102-4008-95143",
                "live"=>false,
                "order"=>"VUKSR_bWSSGOGm3HnNeHkQ",
                "account"=>"iC2BukrURYi6Xmo5Z6ZEGQ",
                "subscriptions"=>[],
                "subtractions"=>
                  {
                    "tax"=>
                      {
                        "currency"=>"USD",
                        "amount"=>0.0,
                        "percentage"=>0.0},
                        "fastspring"=>
                          {
                            "currency"=>"USD",
                            "amount"=>1.54,
                            "percentage"=>15.4
                          }
                      },
                    "payouts"=>
                      [
                        {
                          "payee"=>"machinefarm",
                          "currency"=>"USD",
                          "payout"=>"8.46",
                          "subtotal"=>8.46,
                          "total"=>"10.00"
                        }
                      ]
              }
          }
        ],
          "payout"=>
            {
              "events"=>
                [
                  {
                    "id"=>"auJ-KcEgSuS8qn9mhoaouw",
                    "processed"=>false,
                    "created"=>1546451820654,
                    "type"=>"payoutEntry.created",
                    "live"=>false,
                    "data"=>
                      {
                        "orderId"=>"VUKSR_bWSSGOGm3HnNeHkQ",
                        "reference"=>"MACHINEFARM190102-4008-95143",
                        "live"=>false,
                        "order"=>"VUKSR_bWSSGOGm3HnNeHkQ",
                        "account"=>"iC2BukrURYi6Xmo5Z6ZEGQ",
                        "subscriptions"=>[],
                        "subtractions"=>
                          {
                            "tax"=>
                              {
                                "currency"=>"USD",
                                "amount"=>0.0,
                                "percentage"=>0.0
                              },
                            "fastspring"=>
                              {
                                "currency"=>"USD",
                                "amount"=>1.54,
                                "percentage"=>15.4
                              }
                          },
                        "payouts"=>
                          [
                            {
                              "payee"=>"machinefarm",
                              "currency"=>"USD",
                              "payout"=>"8.46",
                              "subtotal"=>8.46,
                              "total"=>"10.00"
                            }
                          ]
                      }
                  }
                ]
            }
          }

    post '/api/v1/payouts', params: payout_params
    payout = Payout.all.last

    expect(response).to be_successful
    expect(payout.order_id).to eq('VUKSR_bWSSGOGm3HnNeHkQ')
    expect(payout.payee).to eq('machinefarm')
    expect(payout.subtotal).to eq(8.46)
  end
end
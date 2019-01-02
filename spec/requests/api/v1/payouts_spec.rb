require 'rails_helper'

describe 'Payouts API' do
  it 'creates a payout' do
    payout_params = {"events"=>[{"id"=>"sA9KraX3TVmtbuaL43pL2Q", "processed"=>false, "created"=>1546456378788, "type"=>"payoutEntry.created", "live"=>false, "data"=>{"orderId"=>"BW7gpE25QRixk8DgQNxjNw", "reference"=>"MACHINEFARM190102-4008-39173", "live"=>false, "order"=>"BW7gpE25QRixk8DgQNxjNw", "account"=>"spqefSHARBqZVyaN8zDYsA", "subscriptions"=>["7aRKdtI_RTe2jul3l-pfNA"], "subtractions"=>{"tax"=>{"currency"=>"USD", "amount"=>0.0, "percentage"=>0.0}, "fastspring"=>{"currency"=>"USD", "amount"=>9.8, "percentage"=>6.53}}, "payouts"=>[{"payee"=>"machinefarm", "currency"=>"USD", "payout"=>"140.20", "subtotal"=>140.2, "total"=>"150.00"}]}}], "payout"=>{}}

    post '/api/v1/payouts', params: payout_params
    payout = Payout.all.last

    expect(response).to be_successful
    expect(payout.order_id).to eq('BW7gpE25QRixk8DgQNxjNw')
    expect(payout.payee).to eq('machinefarm')
    expect(payout.subtotal).to eq(140.2)
  end
end
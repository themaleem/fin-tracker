class Stock < ApplicationRecord
  def self.new_lookup(ticker)
    client = IEX::Api::Client.new(
      publishable_token: ENV["IEX_API_KEY"],
      secret_token: ENV["IEX_SECRET_KEY"],
      endpoint: 'https://sandbox.iexapis.com/v1'
    )
    client.price(ticker) 
  end
end

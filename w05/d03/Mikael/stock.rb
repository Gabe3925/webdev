require 'pry'
require 'httparty'
require 'sinatra'
require 'sinatra/reloader'

get '/' do

  if params[:symbol]
    @stock_symbol = params[:symbol]
    response = HTTParty.get("http://dev.markitondemand.com/Api/Quote/json?symbol=#{@stock_symbol}")
    response_hash = JSON(response)

    if response_hash["Data"] && response_hash["Data"]["Status"] == "SUCCESS"
      @last_price = response_hash["Data"]["LastPrice"]
      @high = response_hash["Data"]["High"]
      @low = response_hash["Data"]["Low"]

      market_cap = response_hash["Data"]["MarketCap"]
      @shares = (market_cap / @last_price).to_i
    else
      @error = response_hash["Message"]
    end
  end
  # binding.pry

  erb :index
end




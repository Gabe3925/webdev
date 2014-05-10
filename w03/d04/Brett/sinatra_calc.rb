require 'sinatra'
require 'sinatra/reloader'

# store previous calculations in array
calculations = [4]

get '/' do
  return "Welcome to the calculator!"
end

get '/calculator' do
  return "No calculations yet!" if calculations.count == 0
  return calculations.join(", ")
end

get '/calculator/:calc_id' do
  return "Calculation doesn't exist!" if calculations.at(params[:calc_id].to_i - 1 ) == nil
  return calculations.join(", ")
end

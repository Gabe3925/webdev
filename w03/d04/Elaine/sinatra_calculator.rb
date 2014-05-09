require 'sinatra'
require 'sinatra/reloader'
require 'pry'

past_calculations = {
  1 => "1 + 2 = 3"
}

get '/' do
  "<h1>Welcome to the calculator!</h1>"
end

get '/calculator' do

  "<h1>Past Calculations<p></p><p>#{past_calculations[1]}</p></h1>"
end

get '/calculator/:id' do
  id = params[:id].to_i
  past_calculations[id]
end

post '/calculator/add/:num1/:num2' do

  new_key = past_calculations.keys.last + 1
  past_calculations[new_key] = params[:id]

  "#{params[:num1]} + #{params[:num2]} = #{params[:num1].to_i + params[:num2].to_i}"
end

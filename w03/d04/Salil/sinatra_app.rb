require 'sinatra'
require 'sinatra/reloader'
require 'pry'


# get '/' do
#   salil = "hi"
#   "<h1>#{salil}</h1>"
# end

get '/coffee' do
  "coffee"
end

get '/lunch' do
  "lunch"
end

get '/drunk' do
  "drunk"
end

get '/greet/:name' do
  " #{params[:name]}"
end

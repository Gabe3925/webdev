require 'sinatra'
require 'sinatra/reloader'

compliments = [
  "Your instructors love you",
  "High five = ^5",
  "Is it Ruby Tuesday yet?",
  "It's almost beer o'clock",
  "The Force is strong with you"
]

colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"]

get '/' do
  @random_compliment = compliments.sample
  @random_color = colors.sample
  erb :compliment
end

get '/:name' do
  @random_compliment = compliments.sample
  @random_color = colors.sample
  @name = params[:name]
  erb :compliment
end

post '/add' do
  compliments.push(params[:comp])
end

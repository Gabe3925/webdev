require 'pry'
require 'active_record'
require 'sinatra'
require 'sinatra/reloader'

require_relative './models/config'
require_relative './models/clown'

# Clown.create(name: "Trozo", talent: "baloon animals", is_creepy: false, image_url: "http://resources2.news.com.au/images/2012/07/27/1226436/963434-guatemala-clown-congress.jpg")

get '/' do
  erb :home
end

# Index Action
# Read all of the clowns
get '/clowns' do
  @clowns = Clown.all
  erb :'clowns/index'
end

# New Action
# Displays a form for creating a clown
get '/clowns/new' do
  erb :'clowns/new'
end

# Create Action
# Creates the clown
post '/clowns' do
  Clown.create({
    name: params[:name],
    talent: params[:talent],
    is_creepy: params[:is_creepy],
    image_url: params[:image_url]
  })
  "Hi Mary"
end
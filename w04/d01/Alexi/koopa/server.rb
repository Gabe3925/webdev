require 'pry'
require 'active_record'
require 'sinatra'
require 'sinatra/reloader'
require_relative './models/koopa'
require_relative './models/config'

get '/' do
  erb :home
end

get '/koopa' do
  @koopa = Koopa.all
  erb :index
end

get '/koopa/new' do
  erb :'koopa/new'
end

post '/koopa' do
  koopa = Koopas.create({
    name: params[:name],
    color: params[:color],
    has_shell: (params[:has_shell] || false),
    image_url: params[:image_url]
  })
  # redirect to('/koopa/' + koopa.id.to_s)
end

# get '/edit/:id/edit' do
#   @koopa = Koopa.find(params[:id])
#   erb :'koopa/edit'
# end

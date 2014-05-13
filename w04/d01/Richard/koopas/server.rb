require 'pry'
require 'active_record'
require 'sinatra'
require 'sinatra/reloader'

require_relative './models/config'
require_relative './models/koopas'

get '/' do
  erb :koopa_family
end

# Read all info on Koopas

get '/koopas' do
  @koopa = Koopa.all
  erb :'koopas/index'
end


# New Koopa Forom Display

get '/koopas/new' do
  erb :'koopas/new'
end

# Create new Koopa
post '/koopas' do
  @koopa = Koopa.create({
    name: params[:name],
    color: params[:color],
    has_shell: params[:has_shell],
    photo_url: params[:photo_url]
    })
  redirect to('/koopas/' + @koopa.id.to_s)
end

# Show Koopas
get '/koopas/:id' do
  @koopa = Koopa.find(params[:id])
  erb :'koopas/display'
end

# Edit Koopa
get '/koopas/:id/update' do
    @koopa = Koopa.find(params[:id])
    erb :'koopas/update'
end

# Update Koopa
patch '/koopas/:id' do
  @koopa = Koopa.find(params[:id])
  @koopa.update({
    name: params[:name],
    color: params[:color],
    has_shell: params[:has_shell],
    photo_url: params[:photo_url]
    })
  redirect to ('/koopas/' + @koopa.id.to_s)
end

# Deletes shell-less koopa
delete '/koopas/:id' do
  koopa = Koopa.find(params[:id])
  if koopa.has_shell != true
    koopa.destroy
  else
  end
  redirect to ('/')
end

require 'pry'
require 'active_record'
require 'sinatra'
require 'sinatra/reloader'

require_relative './models/config'
require_relative './models/ar_koopas'

# Koopa.create(name: "Koopa Troopa", color: "yellow", has_shell: true, image_url: "http://upload.wikimedia.org/wikipedia/en/7/75/Koopa_Troopa_3D_Land.png")

get '/' do
  erb :home
end

# List all koopas
get '/koopa_pages' do
  @koopa = Koopa.all
  erb :'koopa_pages/index'
end

# New Koopa
get '/koopa_pages/new' do
  erb :'koopa_pages/new'
end

# Create Koopa
post '/koopa_pages' do
  koopa = Koopa.create({
    name: params[:name],
    color: params[:color],
    has_shell: (params[:has_shell] || true),
    image_url: params[:image_url]
  })
  redirect to ('/koopa_pages/' + koopa.id.to_s)
end

# Show Koopa
get '/koopa_pages/:id' do
  @koopa = Koopa.find(params[:id])
  erb :'koopa_pages/show'
end

# Edit Koopa
get 'koopa_pages/:id/edit' do
  @koopa = Koopa.find(params[:id])
  erb :'koopa_pages/edit'
end

# Update Koopa
post '/koopa_pages/:id' do
  koopa = Koopa.find(params[:id])
  koopa.update({
    name: params[:name],
    color: params[:color],
    has_shell: (params[:has_shell] || true),
    image_url: params[:image_url]
  })
  redirect to ('/koopa_pages/' + koopa.id.to_s)
end
# Destroy Koopa
delete '/koopa_pages/:id' do
  koopa = Koopa.find(params[:id])
  koopa.destroy
  redirect to('/koopa_pages/')
end

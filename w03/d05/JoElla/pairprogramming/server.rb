require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

get '/testpass' do
  erb :testpass
end

get '/writetest'do
  erb :writetest
end

get '/needrefactor' do
  erb :needrefactor
end

get '/writejustenough' do
  erb :writejustenough
end

get '/refactorit' do
  erb :refactorit
end

get '/selectnew' do
  erb :selectnew
end

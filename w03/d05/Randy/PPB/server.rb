require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :start
end

get '/pass' do
  erb :pass
end

get '/write_a_test' do
  erb :write_a_test
end

get '/pass' do
  erb :pass
end

get '/enough_to_pass' do
  erb :enough_to_pass
end

get '/refactor' do
  erb :refactor
end

get '/new_feature' do
  erb :new_feature
end

get '/do_it' do
  erb :do_it
end

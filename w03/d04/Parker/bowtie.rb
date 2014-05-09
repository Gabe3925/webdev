require 'sinatra'
require 'sinatra/reloader'
require 'pry'

require 'bowtie'

map "/admin" do
  BOWTIE_AUTH = {:user => 'admin', :pass => '12345'}
  run Bowtie::Admin
end

map '/' do
  run MyApp
end
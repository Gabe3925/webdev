require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

require_relative 'config.rb'

# root should display all koopas, therefore we need all the koopas
get '/' do
  @koopas = Koopa.all
  erd :index
end

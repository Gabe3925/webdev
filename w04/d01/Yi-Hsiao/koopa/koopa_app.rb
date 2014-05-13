require "sinatra"
require "slim"
require "pry"
require_relative "models/koopa"

class KoopaApp < Sinatra::Base
  enable :method_override

  get "/" do
    @koopas = Koopa.all
    slim :index
  end

  get "/koopas/:id" do |id|
    @koopa = Koopa.find(id)
    slim :show
  end
end

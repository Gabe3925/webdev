require 'pg'
require 'active_record'
require 'pry'

ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "joellastraley",
  :password => "",
  :database => "musicals_db"
  )

class Musical < ActiveRecord::Base
end

Musical.create(title: "The Singer", year: 1990, composer: "Der Der", lyricist: "Duh Nuh")

binding.pry

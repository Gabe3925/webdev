require 'pg'
require 'active_record'
require 'pry'

ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "admin",
  :password => "",
  :database => "musicals_db"
  )

class Musical < ActiveRecord::Base
end

# musical = Musical.create(title: "Guys and Dolls", year: 2000, composer: "Elton", lyricist: "Elton" )

puts Musical

binding.pry

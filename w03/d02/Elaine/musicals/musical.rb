require 'pg'
require 'active_record'
require 'pry'

ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "elaine",
  :password => "",
  :database => "musicals_db"
)

class Musical < ActiveRecord::Base
end

# Musical.create(
#   { title: "The Lion King", year: 2000, composer: "Elton John", lyricist: "Elton John" }
# )

binding.pry

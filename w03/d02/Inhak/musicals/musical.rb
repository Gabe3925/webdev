require 'pg'
require 'active_record'
require 'pry'

#logs what the sql that it is, logs to the terminal.
ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "inhak",
  :password => "",
  :database => "musicals_db"
)

class Musical < ActiveRecord::Base
end

binding.pry

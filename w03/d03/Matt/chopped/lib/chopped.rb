require "pg"
require "active_record"
require "pry"

# require our code
Dir[File.join(File.dirname(__FILE__), 'chopped', '*.rb')].each {|file| require file }

ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "matt",
  :password => "",
  :database => "chopped_db"
  )

binding.pry

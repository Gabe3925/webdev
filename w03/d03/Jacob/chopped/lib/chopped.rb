# require libraries
require 'pry'
require 'active_record'

# require our code
Dir[File.join(File.dirname(__FILE__), 'chopped', '*.rb')].each {|file| require file }

# Configure Active Record
# ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "jacobcain",
  :password => "",
  :database => "chopped_db"
)

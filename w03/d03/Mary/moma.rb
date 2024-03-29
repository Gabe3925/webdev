require 'active_record'
require 'pry'

# Active Record connection
ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :user => "mhipp",
  :password => "",
  :database => "moma_db"
  )

class Artist < ActiveRecord::Base
  has_many :paintings
end

class Painting < ActiveRecord::Base
  belongs_to :artist
end

binding.pry

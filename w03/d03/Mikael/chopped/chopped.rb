require 'active_record'

I18n.enforce_available_locales = false
$connection = ActiveRecord::Base.establish_connection(:adapter => "postgresql",
  :host => "localhost",
  :username => "postgres",
  :password => " ",
  :database => "chopped_db")

class Chef < ActiveRecord::Base
  has_many :dishes
  has_many :rounds, :through =>
end

class Round < ActiveRecord::Base
  has_many :dishes
end

class Dish < ActiveRecord::Base
end

class Judge < ActiveRecord::Base
end

class Score < ActiveRecord::Base
end

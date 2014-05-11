require "rspec"
require "capybara/rspec"
require "pry"

RSpec.configure do |config|
  config.include Capybara::DSL
end

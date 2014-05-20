require 'faker'
def gen_random_address
  puts Faker::Name.name
  puts Faker::Address.street_address
  puts Faker::Address.secondary_address
  puts "#{Faker::Address.city_prefix + Faker::Address.city_suffix}, #{Faker::Address.state_abbr} #{Faker::Address.zip_code}"
end

gen_random_address()

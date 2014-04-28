# class Person

#   def initialize(personal_options)
#     @name = personal_options[:name]
#     @age = personal_options[:age]
#     @gender = personal_options[:gender]
#   end
# end
  
 class Apartment

  def initialize(options)
  	@address = options[:address]
  	@monthly_rent = options[:monthly_rent]
  	@sqft = options[:sqft]
  	@num_beds = options[:num_beds]
  	@num_baths = options[:num_baths]
  	@renters = options[:renters]
  end

  def address
    return @address
  end

  def monthly_rent
  	return @monthly_rent
  end

  def sqft
  	return @sqft
  end

  def num_beds
  	return @num_beds
  end

  def num_baths
  	return @num_baths
  end

  def renters
  	return @renters
  end

end

first_street_apartment = Apartment.new({
	address: "101 First Street", 
	monthly_rent: "1000", 
	sqft: "700", num_beds: "1", 
	num_baths: "1", 
	renters: "1"
})

second_street_apartment = Apartment.new({
	address: "202 Second Street", 
	monthly_rent: "1200", 
	sqft: "900", 
	num_beds: "1", 
	num_baths: "1", 
	renters: "1"
})

third_street_apartment = Apartment.new({
	address: "303 Third Street", 
	monthly_rent: "1700", 
	sqft: "2000", 
	num_beds: "2", 
	num_baths: "2", 
	renters: "2"
})


puts first_street_apartment.address()
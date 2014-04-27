require "pry"

class Person

	def initialize(name, age, gender)
	  @name = name
      @age = age
      @gender = gender
	end

	def name #this method allows us to GET the name variable out of the class instance--its called a 'GETTER'
      return @name
    end

    def age #this method allows us to GET the age variable out of the class instance--its called a 'GETTER'
    	return @age
    end

    def gender #this method allows us to GET the age variable out of the class instance--its called a 'GETTER'
    	return @gender
    end


end





class Apartment

	def initialize(address, rent, sqft, num_beds, num_baths, num_renters)
	@address = address
	@rent = rent
	@sqft = sqft
	@num_beds = num_beds
	@num_baths = num_baths
	@num_renters = num_renters
	end

	def address #this method allows us to GET the name variable out of the class instance--its called a 'GETTER'
      return @address
    end

    def rent #this method allows us to GET the age variable out of the class instance--its called a 'GETTER'
    	return @rent
    end

    def sqft #this method allows us to GET the age variable out of the class instance--its called a 'GETTER'
    	return @sqft
    end

    def num_beds #this method allows us to GET the name variable out of the class instance--its called a 'GETTER'
      return @num_beds
    end

    def num_baths #this method allows us to GET the age variable out of the class instance--its called a 'GETTER'
    	return @num_baths
    end

    def num_renters #this method allows us to GET the age variable out of the class instance--its called a 'GETTER'
    	return @num_renters
    end

end


# create apartments here
# here are some existing apartemtns:


apt1 = Apartment.new("116 South Westlake Ave, Apt H, Los Angeles, CA", 800, 650, 1, 1, 1)
apt2 =  Apartment.new("701 East 33rd Street, Baltimore, MD", 1200, 1345, 4, 2, 0)
apt3 = Apartment.new("2740 Saint Paul Street, Apt 2, Baltimore, MD", 650, 525, 0, 1, 0)
apt4 = Apartment.new("302 South Pine Street, Richmond, VA", 1500, 745, 2, 2, 2)

all_apt_addresses= []
all_apt_addresses.push(apt1.address)
all_apt_addresses.push(apt2.address)
all_apt_addresses.push(apt3.address)
all_apt_addresses.push(apt4.address)



apt_hash = []
apt_hash << {apt1_address: apt1.address, apt1_sqft: apt1.sqft, apt1_rent: apt1.rent, apt1_bed: apt1.num_beds, apt1_bath: apt1.num_baths, apt1_renters: apt1.num_renters}
apt_hash << {apt2_address: apt2.address, apt2_sqft: apt2.sqft, apt2_rent: apt2.rent, apt2_bed: apt2.num_beds, apt2_bath: apt2.num_baths, apt2_renters: apt2.num_renters}
apt_hash << {apt3_address: apt3.address, apt3_sqft: apt3.sqft, apt3_rent: apt3.rent, apt3_bed: apt3.num_beds, apt3_bath: apt3.num_baths, apt3_renters: apt3.num_renters}
apt_hash << {apt4_address: apt4.address, apt4_sqft: apt4.sqft, apt4_rent: apt4.rent, apt4_bed: apt4.num_beds, apt4_bath: apt4.num_baths, apt4_renters: apt4.num_renters}


#heres the re-useable menu
def menu 
puts "@@@@@@@@@@@@ menu 1 @@@@@@@@@@@@@"
puts "@                               @"
puts "@  1 - List all Apartments      @"
puts "@  2 - View an Apt.s details    @"
puts "@  3 - Add an apartment         @"
puts "@  4 - Add a tenant to an Apt.  @"
puts "@  q - Quit                     @"
puts "@                               @"
puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
puts" "
end


# CREATING THE PROGRAM LOOP, if else loop, looking for numeric input from menu only. q is the end else.

menu_selection = "0"



while menu_selection != "q" #initial menu at start-up

  puts menu
  puts "enter a selection number :"
  menu_selection = gets.to_s.chomp

  
	case menu_selection
	
			when "1"

  			puts "LIST ALL APARTMENTS"

        puts "THE FOLLOWING APTs EXIST: "
        puts "(#)       (address)    "
        puts all_apt_addresses.map.with_index {|w,i| "#{i} : #{w}" }
 			  puts " "

        puts "AAAAAAAAAA"
        puts apt_hash
        

			when "2"

  			puts "VIEW AN APTS DETAILS : "
        puts "which apt were you interested in?"

        puts apt_hash[0] 
        puts apt_hash[0][:apt1_renters]

  
			when "3"

			puts "menu 3"
	

			when "4"

			puts "4444444"






			else
	end
 
end

puts "goodbye"

















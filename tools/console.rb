require_relative '../config/environment.rb'


def reload
  load 'config/environment.rb'
end



# Put your variables here~!
brian = Passenger.new("brian")
prince = Passenger.new("prince")

nick = Driver.new("nick")
dante = Driver.new("dante")

to_wa_hi = Ride.new("nick", "prince", 1.72)
to_queens = Ride.new("nick", "brian", 15.87)
to_brooklyn = Ride.new("dante", "brian", 52.32)
to_bronx = Ride.new("nick", "brian", 74.68)



binding.pry

puts "Done!"

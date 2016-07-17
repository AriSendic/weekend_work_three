# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method

x = HotelReservation.new(customer_name: "Ty Cobb", date: "6/17", room_number: "453")

p "Testing room_number..."
x.room_number = "452"
result = x.room_number 
if result == "452"
  puts "pass"
else
  puts "Your'e the worst coder ever!"
end

p "Testing add_a_fridge..."
x.add_a_fridge
result = x.amenities
if x.amenities.include?("fridge")
  puts "pass"
else
  puts "Your'e the worst coder ever!"
end

p "Testing add_a_crib..."
x.add_a_crib
result = x.amenities
if x.amenities.include?("fridge")
  if x.amenities.include?("crib")
    puts "pass"
  else
    puts "Your'e the worst coder ever!"
  end
else
  p "Your'e the worst coder ever!"
end  

p "Testing add_a_custom_amenity..."
x.add_a_custom_amenity("microwave")
result = x.amenities.length
if result == 3
  if x.amenities.include?("microwave") 
    puts "pass"
  else
    p "You're the worst coder ever!"
  end
else
  p "You're the worst coder ever!"
end  

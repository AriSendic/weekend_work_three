# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)
class Remote
  def initialize(tv)
    @tv = tv 
  end
  
  def toggle_power
    if @tv.power == "off"
      @tv.power = "on"
    else 
      @tv.power = "off"
    end
  end

  def increment_volume
    @tv.volume += 1
  end

  def decrement_volume
    @tv.volume -= 1
  end

  def set_channel(input)
    @tv.channel = input
  end 
end   

class Tv
  attr_accessor :power, :volume, :channel
  def initialize(options)
    @power = options[:power]
    @volume = options[:volume]
    @channel = options[:channel]
  end
end
 
tv1 = Tv.new(:power => "off", :volume => 0, :channel => 1)
tv2 = Tv.new(:power => "on", :volume => 34, :channel => 7)

clicker1 = Remote.new(tv1)
clicker2 = Remote.new(tv2)
p tv2
clicker1.toggle_power
clicker1.increment_volume
p tv1
clicker2.decrement_volume
clicker2.set_channel("21")
p tv2
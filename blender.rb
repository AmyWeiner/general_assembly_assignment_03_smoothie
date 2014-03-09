# The Blender class can make smoothies by implementing the blend method. It can
# only operate when its current state is on, and by default when a Blender object
# is instantiated, it is switched off. 
class Blender
  attr_accessor :switched_on

 def initialize(switched_on=false)
  @switched_on = switched_on
  puts "The blender is currently off."
 end

 def toggle_state
   @switched_on == false ? @switched_on = true : @switched_on = false
 end

 def make_smoothie(smoothie_ingredients)
  if @switched_on == true
    puts "blending the smothie..."
    puts ""
    sleep(1)
    puts "the smoothie is now ready."
    puts ""
    sleep(1)
    smoothie_items = smoothie_ingredients.keys.join.delete(" ").split('').shuffle!.join 
  else
    puts "Sorry, the blender is off."
    puts ""
    sleep(1)
    puts "Please turn the blender on and try again."
  end
 end
end


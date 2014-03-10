# The Blender class can make smoothies by implementing the blend method. It can
# only operate when its current state is on, and by default when a Blender object
# is instantiated, it is switched off. 
class Blender
  attr_accessor :switched_on

 def initialize(switched_on=false)
  @switched_on = switched_on
 end

 def toggle_state
   @switched_on == false ? @switched_on = true : @switched_on = false
 end

# This function takes in all of the smoothie ingredients, chops
# and mixes them up, and outputs a string of mixed characters,
# removing any whitespace. 
def blend(smoothie_ingredients)
  # retrieves only the food items and not the measurements
  return smoothie_ingredients.keys.join.delete(" ").split('').shuffle!.join 
end

 def make_smoothie(smoothie_ingredients)
  if @switched_on == true
    puts "blending the smothie..."
    puts ""
    sleep(1)
    puts "the smoothie is now ready, enjoy."
    puts ""
    sleep(1)
    smoothie = blend(smoothie_ingredients)
    puts smoothie
  else
    puts "Sorry, the blender is off."
  end
 end
end

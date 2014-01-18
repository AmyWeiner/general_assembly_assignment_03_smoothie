# Every Morning I make a smoothie with the follow ingredients:
smoothie_ingredients = {
  'flax seeds' => '1 tbsp',
  'chia seeds' => '1 tbsp',
  'coconut flakes' => '1 tbsp',
  'spirulina' => '1 tsp',
  'pumpkin seeds' => '1 tbsp',
  'oatmeal' => '1/4 cup',
  'coco powder' => '1 tbsp',
  'peanut butter' => '1 tbsp',
  'almonds' => '1/4 cup',
  'walnuts' => '1/4 cup',
  'spinach' => '1/4 cup',
  'greek yogurt' => '1/4 cup',
  'nutrional yeast' => '1 tbsp',
  'brussel sprouts' => '1/4 cup',
  'asparagus' => '1/4 cup',
  'kale' => '1/4 cup',
  'brocoli rabe' => '1/4 cup',
  'blue berries' => '1/4 cup',
  'chopped banana' => '1/2 cup',
  'straw berries' => '1/4 cup',
  'mango' => '1/4 cup',
  'hemp milk' => '1 cup'
}
 
 
# This function takes in all of the smoothie ingredients, chops
# and mixes them up, and outputs a string of mixed characters,
# removing any whitespace. 
def blend(smoothie_ingredients)
  # retrieves only the food items and not the measurements
  smoothie_items = smoothie_ingredients.keys.join.delete(" ").split('').shuffle!.join 
end
 
 
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


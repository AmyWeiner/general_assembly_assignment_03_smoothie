require './blender'

# attempts to make smoothie and notifies user that blender is off
def continue_with_breakfast(my_blender, smoothie_ingredients)
  my_blender.make_smoothie(smoothie_ingredients)
  puts "\nWould you like to turn on the blender, and try again?"
end

# turns on blender and continues to make smoothie
def continue_with_smoothie(my_blender, smoothie_ingredients)
  my_blender.toggle_state
  puts ""
  my_blender.make_smoothie(smoothie_ingredients)
end

# repeats prompt after user gives invalid input
def reprompt
  puts "I'm sorry, I did not understand your response. Please answer with \'yes\' or \'no.\'"
  response = gets.chomp.downcase
end

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

my_blender = Blender.new

puts "Good morning, would you like to make your usual breakfast smoothie?"

response = gets.chomp.downcase

puts ""

while (true)
  if response == "yes" || response == "y"
      # attempts to make smoothie, but blender is off
      continue_with_breakfast(my_blender, smoothie_ingredients)
      # prompts user to turn blender on
      reply = gets.chomp.downcase
      while (true)
        if reply == "yes" || reply == "y"
          # makes smoothie and exits program
          continue_with_smoothie(my_blender, smoothie_ingredients)
          break
        elsif reply == "no" || reply == "n"
          puts "Okay, have a great day"
          break
        else
          reply = reprompt
        end
      end
      break
    elsif response == "no" || response == "n"
      puts "Okay, have a great day."
      break
    else
      response = reprompt
  end
end




require_relative( 'warehouse_functions' )

# Data
product_info_hash  = {

  a1:  'needle'       ,
  a2:  'stop sign'    ,
  a3:  'blouse'       ,
  a4:  'hanger'       ,
  a5:  'rubber duck'  ,
  a6:  'shovel'       ,
  a7:  'bookmark'     ,
  a8:  'model car'    ,
  a9:  'glow stick'   ,
  a10: 'rubber band'  ,

}

# 1)
#   Given a bay, returns the item in that bay
#   - given "b5", should return 'nail filer'

puts 'What bay would you like information on? [expects rack and number eg. b5]'
user_input_1 = gets.chomp

puts "#{user_input_1}: #{return_item_from_bay( user_input_1, product_info_hash )} "

# 2)
#   Given an item return the bay that it is in.
#   - given "nail filer" should return "b5"

puts "Input item to return it's bay:"
user_input_2 = gets.chomp

puts "#{user_input_2}: #{return_bay_from_item( user_input_2, product_info_hash )}"

  # 3) Given a list of bays, list the items in those bays
  # - given "b5, b10, and b6", determine that the products are "nail filer, cookie jar, and tooth paste", and they're five bays apart













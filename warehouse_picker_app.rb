require_relative( 'warehouse_functions' )

# Data
product_info_hash  = {
  a1:  'needle'         ,
  a2:  'stop sign'      ,
  a3:  'blouse'         ,
  a4:  'hanger'         ,
  a5:  'rubber duck'    ,
  a6:  'shovel'         ,
  a7:  'bookmark'       ,
  a8:  'model car'      ,
  a9:  'glow stick'     ,
  a10: 'rubber band'    ,
  b1:  'tyre swing'     ,
  b2:  'sharpie'        ,
  b3:  'picture frame'  ,
  b4:  'photo album'    ,
  b5:  'nail filer'     ,
  b6:  'tooth paste'    ,
  b7:  'bath fizzers'   ,
  b8:  'tissue box'     ,
  b9:  'deodorant'      ,
  b10: 'cookie jar'     ,
  c1:  'rusty nail'     ,
  c2:  'drill press'    ,
  c3:  'chalk'          ,
  c4:  'word search'    ,
  c5:  'thermometer'    ,
  c6:  'face wash'      ,
  c7:  'paint brush'    ,
  c8:  'candy wrapper'  ,
  c9:  'shoe lace'      ,
  c10: 'leg warmers'    
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

puts "Input list of bays to return a list of items. Input bay or 'get' to return information:"

# declares variables needed 
user_input_array = []
user_input_raw = 'nil'

# runs a while loop to input any number of bays. 
# the loop exits when the user inputs 'get'. 'get' is added to the array but .pop removes it in the next line.
  while user_input_raw != 'get'
    print ':' 
    user_input_raw = gets.chomp
    user_input_array << user_input_raw 
  end

user_input_array.pop  

puts return_list_items_from_bays( user_input_array, product_info_hash )






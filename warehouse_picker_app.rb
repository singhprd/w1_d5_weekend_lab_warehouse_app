# require_relative( 'warehouse_functions' )

# Data
warehouse_product_information_hash = {

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

array_of_symbols = [:a1, :a2, :a3]


# 1)
#   Given a bay, returns the item in that bay
#   - given "b5", should return 'nail filer'

# print "What bay would you like information on? [expects rack and number eg. b5]"

# user_input = gets.chomp

# return_bay_item(user_input, warehouse_product_information_hash)

    puts input_hash.key?(user_input_sym)




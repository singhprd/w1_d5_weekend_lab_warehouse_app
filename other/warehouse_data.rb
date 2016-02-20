require_relative( '../warehouse_functions' )

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
  
  c1:  'rusty nail'     ,
  c2:  'drill press'    ,
  c3:  'chalk'          ,
  c4:  'word search'    ,
  c5:  'thermometer'    ,
  c6:  'face wash'      ,
  c7:  'paint brush'    ,
  c8:  'candy wrapper'  ,
  c9:  'shoe lace'      ,
  c10: 'leg warmers'    ,

  b1:  'tyre swing'     ,
  b2:  'sharpie'        ,
  b3:  'picture frame'  ,
  b4:  'photo album'    ,
  b5:  'nail filer'     ,
  b6:  'tooth paste'    ,
  b7:  'bath fizzers'   ,
  b8:  'tissue box'     ,
  b9:  'deodorant'      ,
  b10: 'cookie jar'     
}


# return_difference_between_bays(  ['b5', 'b10', 'b6'], product_info_hash )

input_hash = product_info_hash
user_input_array = ['b5', 'b10', 'b6']

warehouse_layout_array = Array.new
warehouse_layout_array
  for x, y in input_hash
    warehouse_layout_array << x
  end
  
item_positions = Array.new
  for x in user_input_array
    x = x.to_sym
    item_positions << warehouse_layout_array.index(x)
  end
item_positions.sort!
item_positions
print item_positions[-1] - item_positions[0]


















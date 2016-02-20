# input_hash[some_key] # => value for that key
# input_hash.key(some_value) # => key for that value

def return_item_from_bay(user_input_raw, input_hash)
  user_input_sym = user_input_raw.to_sym
    if input_hash.key?(user_input_sym)
      then return input_hash[user_input_sym]
    else
      print 'No such bay found'
    end
  end

def return_bay_from_item(user_input_raw, input_hash)
  user_input = user_input_raw.downcase
    if input_hash
      then return input_hash.key(user_input).to_s
    else
      return 'No bay found for that item'
    end
end

def return_list_items_from_bays( user_input_array, input_hash ) 
    # declares a new array which will be the output of this function. 

    # Then for each in the input array, which has beeen declared and passed to the function, it checks if its in the hash, converts the user input to a symbol, gets information on the item and puts that information in output_array to be returned. It also returns 'Bay not found if its not in the input_hash'
    output_array = Array.new
    
    for i in user_input_array 
      if input_hash.include?(i.to_sym) 
        then input_bay = i.to_sym
          output_array << input_hash[input_bay]
        else output_array << "Bay #{i} not found"
      end
    end
  return output_array  
end

def return_difference_between_bays( user_input_array, input_hash )
  # creates a new array from the hash to calulate difference. It works because the input-hash is in the right order.
  warehouse_layout_array = Array.new
  for x, y in input_hash
    warehouse_layout_array << x
  end
  
# makes a new array of the index position of items. It then sorts the array of index positons, takes the first and last position and subtracts them to get the difference. 
  item_positions = Array.new
    for x in user_input_array
      x = x.to_sym
      item_positions << warehouse_layout_array.index(x)
    end
  item_positions.sort!
  item_positions
  return item_positions[-1] - item_positions[0]
end
















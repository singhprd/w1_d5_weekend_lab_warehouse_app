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

def return_list_items_from_bays( user_input_raw, input_hash)
  return ['batman', 'batman']
end
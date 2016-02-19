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


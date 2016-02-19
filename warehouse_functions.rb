# input_hash[some_key] # => value for that key
# input_hash.key(some_value) # => key for that value


def return_bay_item(user_input_raw, input_hash)
  user_input_sym = user_input_raw.to_sym

  for key, value in input_hash
    if input_hash.key?(user_input_sym)
      then print value
    else
      print 'LOOSER'
    end
  end
end

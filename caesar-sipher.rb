def caesar_cipher(string, factor)
  # Convert string into array of ASCII values
  array = string.bytes

  # Shift it by the factor
  array.map! do |val|
    # If a value is between 'a-z'
    if val.between?(97, 122)
      val += factor
    # If a value is between 'A-Z'
    elsif val.between?(65, 90)
      val += factor
    else
      val = val
    end
  end

  # Wrap
  array.map! do |val|
    # If a value is greater than 'z' => wrap to 'a'
    if val > 122
      val = val - 122 + 97
    # If a value is greater than 'Z' => wrap to 'A'
    elsif val.between?(91, 96)
      val = val - 90 + 65 - 1
    else
      val = val
    end
  end

  # Convert array back to string
  new_array = array.pack('c*')
  new_array
end
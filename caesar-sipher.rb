# Take a string & a factor
def caesar_cipher(string, factor)
  # Convert string to array
  char_array = string.split('')

  # Convert chararcters to ord 
  ord_array = char_array.collect { |char| char.ord }

  # Shift each ord by a factor if it is a letter
  shifted_ord_array = ord_array.collect do |ord|
    if 65 <= ord && ord <= 90 || 97 <= ord && ord <= 122
        ord += factor
    else
        ord
    end
  end

  # Wrap
  wrapped_ord_array = shifted_ord_array.collect do |ord|
  # from z to a
    if ord > 122
        ord = ord - 122 + 97
  # from Z to A
    elsif ord.between?(91, 96)
        ord = ord - 90 + 65 - 1
    else
        ord = ord
    end
  end
  # Convert ord to characters & Join the shifted characters array
  wrapped_ord_array.collect { |ord| ord.chr }.join
end

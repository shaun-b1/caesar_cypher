#Implement a caesar cypher that takes in a string and the shift factor and then outputs the modified string

#Inputs
  #A string
  #An integer

#Outputs
  #A string that has been shifted in the alphabet by the integer


#split the string into letters
#convert the letters into ASCII code
#add the inputted integer to the ASCII code
  #IF the code runs past the end of the ASCII code for the alphabet, minus 26 from the value.
#convert ASCII code back into letters
#join the letters back into a string.
#output the string

def Caesar_Cypher(string, shift_factor)
  coded_array = []
  arr = string.split("")

  arr.each do |letter|
    ascii_letter = letter.ord

    if ascii_letter.between?(65, 90)
      ascii_letter += shift_factor
      if ascii_letter > 90
        ascii_letter -= 26
      end
    elsif ascii_letter.between?(97, 122)
      ascii_letter += shift_factor
      if ascii_letter > 122
        ascii_letter -= 26
      end
    end

    coded_array.push(ascii_letter.chr)
  end

  cypher = coded_array.join("")
  p cypher
end

Caesar_Cypher("What a string!", 5)

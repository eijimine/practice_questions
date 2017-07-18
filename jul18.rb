# Displaying phone numbers
# Write a method that accepts an array of 10 integers (between 0 and 9), that returns
#a string of those numbers in the form of a phone number.
# Example: create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) => returns "(123) 456-7890"
# PROTIP: Don't forget the space after the closing parenthesis!

# 1. Start a new string
# 2. Add an opening round bracket to the string
# 3. Iterate over the first three numbers only
#   4. After the first three numbers add a closing round bracket
#   5. Add a space
# 6. Iterate over the next three numbers
#   7. Add a dash
# 8. Iterate over the last 4 numbers
# 9. Return the resulting string

digits = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]

def create_phone_number(digits)

result += '('
index = 0

digits.each do |digit|
    if index == 3
      result += ') '
    elsif index == 6
      result += '-'
    end

  result += digit.to_s

  index += 1
  end

  result
end


create_phone_number(digits)

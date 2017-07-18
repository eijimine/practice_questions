
# Displaying Phone Numbers
# create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) => returns "(123) 456-7890"

# Pseudo-code solution

# 1. Start off with an array of numbers
# n. Finish with returning a string

# // Break up digits to groups of 3, 3 and 4, starting at the beginning
# // 1. Convert to a string
# //   a. Iterate over each item in the list
# //   b. Print each item out

def create_phone_number(digits)
  # 1. Start an empty string
  result = ''

  # 2. Add an opening round bracket to the string
  result += '('

  count = 0

  digits.each do |digit|
    # 3. Iterate over the first 3 numbers only and add them to the string
    if count == 3
    #   4. After the first 3 numbers add a closing round bracket
    #   5. Add a space
      result += ') '
    # 6. Iterate over the next 3 numbers and add them to the string
    elsif count == 6
    #   7. Add a dash
      result += '-'
    end

    # 8. Iterate over the last 4 numbers and add them to the string
    result += digit.to_s

    count += 1
  end

  # 9. Return the resulting string
  result
end



def refactored_create_phone_number(digits)
  # 1. Start an empty string
  # 2. Add an opening round bracket to the string
  result = '('

  digits.each_with_index do |digit, index|
    # 3. Iterate over the first 3 numbers only and add them to the string
    if index == 3
    #   4. After the first 3 numbers add a closing round bracket
    #   5. Add a space
      result += ') '
    # 6. Iterate over the next 3 numbers and add them to the string
    elsif index == 6
    #   7. Add a dash
      result += '-'
    end

    # 8. Iterate over the last 4 numbers and add them to the string
    result += digit.to_s
  end

  # 9. Return the resulting string
  result
end

digits = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
puts create_phone_number(digits)

puts refactored_create_phone_number(digits)

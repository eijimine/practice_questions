
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






# ======================================================


# Luck check
#
# In some countries of the former Soviet Union there was a belief about lucky tickets.
# A transport ticket of any sort was believed to possess luck if sum of digits on the
# left half of its number was equal to the sum of digits on the right half. Here are
# examples of such numbers:
#
# 003111 # 3 = 1 + 1 + 1
# 813372 # 8 + 1 + 3 = 3 + 7 + 2
# 17935 # 1 + 7 = 3 + 5
# 56328116
# Such tickets were either eaten after being used or collected for bragging rights.
# Your task is to write a method luck_check(str), which returns true if argument is
# string decimal representation of a lucky ticket number, or false for all other numbers.
# It should handle errors for empty strings or strings which don't represent a decimal number.

str1 = [1,2,3,3,2,1]
str2 = [4,5,6,3,8,2]
str3 = [5,5,1,4,1,5,5]
str4 = [9,9,1,7,1,3,2]
str5 = []


def luck_check(str)
  #count array
  count = str.count

  if count <= 1
    puts "Error, the ticket is invalid"
    exit
  end


  # if even split down the middle then add left and right and compare
  # if odd then leave middle and add left and right and compare
  if count.even? == true
    p "Even string"
    # p  str.slice(0..count/2-1)
    left = str.slice(0..count/2-1).sum
    # p  str.slice(count/2..count)
    right = str.slice(count/2..count).sum
    if left == right
      p "Lucky ticket!"
    else
      p "Nothing special about this ticket."
    end
  else
    p "Odd string"
    # p str.slice(0..count/2-1)
    left = str.slice(0..count/2-1).sum
    # p str.slice(count/2+1..count)
    right = str.slice(count/2+1..count).sum
    if left == right
      p "Lucky ticket!"
    else
      p "Nothing special about this ticket"
    end
  end



end



luck_check(str1)
luck_check(str2)
luck_check(str3)
luck_check(str4)

luck_check(str5)

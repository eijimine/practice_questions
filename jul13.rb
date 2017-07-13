# ====================>> Assignment
# You may have heard that computers represent all data with binary numbers.
# In the binary number system, only two digits are used: 0 and 1. Contrast this to the decimal number system we are used to, which uses 10 digits: 0 through 9.
# In the decimal number system, when the least significant number is 9, and you +1 to that number, then the least significant number resets back to 0, and a 1 is added to the front of the number, producing 10. The same thing happens when you have 99, and you +1 to it. Then all the 9's reset to 0, and a 1 is added to the front of the number, producing 100.
# It works similarly in binary, except it will reset much quicker:
# 0        = 0
# 1        = 1
# 10       = 2
# 11       = 3
# 100      = 4
# 101      = 5
# 110      = 6
# 111      = 7
# 1000     = 8
# ...
# 11111111 = 255
# Write a method that can covert a string representing a binary number to a decimal number. You may assume that the string will only contain 0's and 1's.
# bin_to_dec('10')     --> 2
# bin_to_dec('101')    --> 5
# bin_to_dec('101100') --> 44







def bin_to_dec()
  dec = 0

  bin.chars.reverse.each_with_index do |char, i|
    puts "char=#{chart}, i=#{i}"
    # if char == '1'
    #   dec += if i == 0
    #     1
    #   elsif i == 1
    #     2
    #   elsif i == 2
    #     4
    #   elsif i == 3
    #     8
    #   elsif i == 4
    #     16
    #   elsif i == 5
    #     32
    #   elsif i == 6
    #     64
    #   elsif i == 7
    #     128
    #   end

    dec += char.to_i*(2**i)

  end

  return dec
end

puts bin_to_dec('0')
puts bin_to_dec('10')
puts bin_to_dec('101')
puts bin_to_dec('101100')



# 00000000 = 0
# 00000001 = 1
# 00000010 = 2
# 00000011 = 3
# 00000100 = 4
# 00000101 = 5
# 00000110 = 6
# 00000111 = 7
# 00001000 = 8
# 00010000 = 16
# 00100000 = 32
# 01000000 = 64
# 10000000 = 128
#
# 1111111 = 255
# 11110000 =
#
#
#
#
#

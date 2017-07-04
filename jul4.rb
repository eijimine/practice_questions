# Create the following array:
# [1, 12, 144, 1728, 20736, 248832, 2985984, 35831808]
# Notice that every element of the array is equal to the previous element times twelve. (Finding out how to do exponentials might be helpful here)

array = []

8.times do |num|
  array << 12 ** num
end
puts array


# Reversals
# Permanently change this array
# words = ['first', 'second', 'third', 'fourth', 'fifth', 'sixth']
# to this one
# words
# => ["htxis", "htfif", "htruof", "driht", "dnoces", "tsrif"]

words = ['first', 'second', 'third', 'fourth', 'fifth', 'sixth']

words.each do |word|
  word.reverse!
end
words.reverse!
puts words


# Array to Hash
# movies = [['Alfonso Cuaron', 'Gravity'], ['Spike Jonze', 'Her'], ['Martin Scorsese', 'The Wolf of Wall Street']]
# Use the "movies" array to construct the following hash:
# {"Alfonso Cuaron" => "Gravity", "Spike Jonze" => "Her", "Martin Scorsese" => "The Wolf of Wall Street"}

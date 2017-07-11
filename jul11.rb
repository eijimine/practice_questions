# Card Counting
# > In the game of Blackjack, the objective is to beat the dealer by getting as close
# as possible to 21 without going over.
# > It is possible to gain an advantage over the casino by keeping track of the cards
# that have already been played.
# > Start your count at 0.
# > If lots of small cards have already been played, this puts the player at an advantage
# because there are more large cards remaining. We add +1 when a 2, 3, 4, 5, or 6 have
# been played.
# > If lots of large cards have already been played, the player is at a disadvantage.
# We subtract -1 when a T (ten), J, K, Q or A has been played.
# > 7, 8, 9 are considered neutral cards and we do not subtract or add to the count
# when these cards are played.
# > Give a string that is no longer than 52 characters (i.e. the size of a standard deck
# of cards), write a method which returns the count given the string.
# card_count('K2T6AA')  ---> -2
# card_count('798tt23') ---> 0
# card_count('235T22')  ---> 4











# Stretch: If at any time, more than 4 cards of the same rank is played, the casino
# is cheating and you should not play this game! (The method should return false)

# card_count('KKT2KKK') ---> false

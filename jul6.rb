# Write a cat class

# > A cat is initialized with its name
# > A cat is happy, if and only if its fed, rested, entertained, and adopted
# > It is possible to play with a cat in order to entertain it,
#   but when you play with a cat, it becomes tired
# > It is possible to pet a cat. When you pet a cat, it will either purr if it's happy
#   otherwise it will hiss
# > Once a cat is adopted, it is given a furrever home and can never be unadopted

# What other behaviors do you need to adequately implement this class?
# What kind of state do you need to support all of these behaviors?

class Cat

  attr_accessor :name

  def initialize(name)
    @name = name
    @happy = false

    @fed = false
    @rested = false
    @entertained = false
    @adopted = false
  end

  def adopt
    puts "You have adopted this cat furrever!"
    @adopted = true
  end

  def entertain
    puts "Entertaining cat now!"
    @entertained = true
  end

  def sleep
    puts "Tucking in the cat for a nap!"
    @rested = true
  end

  def feed
    puts "Dinner is served!"
    @fed = true
  end

  def pet
    "Petting the cat at my own risk!"
    num = rand(1..2)
    if num == 1
      puts "Purrrrrrrrrrr......."
    elsif num == 2
      puts "Hissssssssss........"
    end
  end

  def happy
    puts "Are you happy?"
    if @happy == false
      puts "Cat: I'm pretty pissed actually."
    elsif @happy == true
      puts "Cat: Couldn't be happier, thanks bud."
    end
  end

end

a = Cat.new("Katty")

a. happy

a.adopt
a.entertain
a.sleep
a.feed

a.pet
a.pet
a.pet
a.pet

a.happy

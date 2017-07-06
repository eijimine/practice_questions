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

  def play
    puts "Entertaining cat now!"
    @entertained = true
    @rested = false
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

  def happy?
    puts "State your happiness levels cat, are you happy?"
    if  @adopted == true &&  @entertained == true && @rested == true && @fed == true
      @happy = true
    else
      check_if_happy
    end
  end

  def check_if_happy
    if @happy == false
      puts "#{@name}: I'm pretty pissed actually."
      why_so
    elsif @happy == true
      puts "#{@name}: Couldn't be happier, thanks bud."
    end
  end

  def why_so
    if @adopted == false
      puts "I haven't been adopted yet!"
    elsif @entertained == false
      puts "I am not entertained. Are you not entertained?"
    elsif @rested == false
      puts "I'm tired. I need rest."
    elsif @fed == false
      puts "Feed meeeee!!!"
    end
  end



end

a = Cat.new("Katty")

a. happy?

a.adopt
a.happy?

a.play
a.happy?

a.sleep
a.happy?

a.feed
a.happy?

a.pet
a.pet
a.pet
a.pet

a.happy?

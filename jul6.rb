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
    if @rested == true
      puts "Purrrrrrrrrrr......."
    elsif @rested == false
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

a = Cat.new("Pappy O' Donnel")

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


b = Cat.new("Jake the Snake")
c = Cat.new("Morgan Freeman")
d = Cat.new("Jordan Michael")
e = Cat.new("Wilbur Ross")
f = Cat.new("Blake the Snake")


#===============================================================

# Write a human class

# > A human is initialized with its name
# > A human can own multiple cats
# > A human can adopt another new cat at any time
# > A human can feed, entertain, and pet all of its cats at the same time
# > A human is considered crazy if it owns more than some large number of cats
#   (you can decide how many)

class Human

  attr_accessor :name

  def initialize(name)
    @name = name
    @cats = []
    @crazy = false
  end

  def adopt_cat(cat)
    @cats << cat
    cat.adopt
  end

  def feed
    @cats.each do |cat|
      cat.eat
    end
  end

  def entertain
    @cats.each do |cat|
      cat.play
    end
  end

  def pet
    @cats.each do |cat|
      cat.pet
    end
  end



  def crazy?
    if @number_of_cats.count > 10
      @crazy = true
      puts "You're a nutcase!"
    else
      puts "Haven't lost your marbles just yet!"
    end
  end

  
end

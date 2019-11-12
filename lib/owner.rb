class Owner
  
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end
  
  def say_species 
    return "I am a #{@species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.size
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def cats
    Cat.all.select {|cat| cat.owner == self}
  end
  
  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end
  
  def buy_cat(cat)
    cat = Cat.new(cat, self)
    cat.owner = self
  end
  
  def buy_dog(dog)
    dog = Dog.new(dog, self)
    dog.owner = self
  end
  
  def walk_dogs
    self.dogs.each {|dog| dog.mood = "happy" }
  end
  
  def feed_cats
    self.cats.each {|cat| cat.mood = "happy" }
  end
  
  def sell_pets
    self.cats.each do |cat| 
      cat.mood = "nervous"
      cat.owner = nil
    end
    self.dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
  end
  
  def list_pets
<<<<<<< HEAD
    return "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
=======
    
>>>>>>> 705900e43d0eabc5a73b1e043e08d1d23c7a34e0
  end
  
end
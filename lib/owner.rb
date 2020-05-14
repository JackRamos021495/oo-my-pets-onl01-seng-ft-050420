class Owner
  # code goes here
  attr_reader :name
  @@all = []
  @@pets = []
  def initialize(name)
    @name = name
    @@all << self
    @cats = []
    @dogs = []
  end

  def species(species="human")
    species
  end

  def say_species
    "I am a #{species}."
  end


  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
      @@all.clear
  end

  def cats
    Cat.all.select {|cat|cat.owner == self}
  end

  def dogs
    Cat.all.select {|dog|dog.owner == self}
  end

  def buy_cat(name)
    @cats << Cat.new(name,self)
  end

  def buy_dog(name)
    @dogs << Dog.new(name,self)
  end

end

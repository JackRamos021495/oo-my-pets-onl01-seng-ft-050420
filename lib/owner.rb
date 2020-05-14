class Owner
  # code goes here
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
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
    Cat.all.collect {|cat|cat.owner == self}

end

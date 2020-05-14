class Owner
  # code goes here
  attr_reader :name
  @@all = []
  @@count = 0
  def initialize(name)
    @name = name
  end

  def species(species="human")
    species
  end

  def say_species
    "I am a #{species}."
  end

  def save
    @@all << self
    @@count += 1
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def reset_all

  end



end

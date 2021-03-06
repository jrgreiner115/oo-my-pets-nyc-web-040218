require 'pry'
class Owner
  attr_reader :species
  attr_accessor :name, :pets
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @species = 'human'
    @pets = { fishes: [], dogs: [], cats: [] }
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

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].map do |att|
      att.mood = 'happy'
    end
  end

  def play_with_cats
    pets[:cats].map do |att|
      att.mood = 'happy'
    end
   end

  def feed_fish
    pets[:fishes].map do |att|
      att.mood = 'happy'
    end
   end

   def sell_pets
     pets.each do |symbol, arr|
       arr.each do |att|
         att.mood = 'nervous'
       end
       arr.clear
     end
   end

   def list_pets
     "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
   end
end

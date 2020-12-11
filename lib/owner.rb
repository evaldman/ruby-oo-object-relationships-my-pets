class Owner
attr_reader :name, :species
@@all = []
#@@count = 0  
    def initialize (name)
      @name = name
      @species = "human"
      #@@count += 1
      @@all << self
    end

    def say_species
      "I am a #{self.species}."
    end

    def self.all
      @@all
    end
    #def self.count
    #  @@count
    #end
    def self.count
      @@all.length
    end
    def self.reset_all
      @@all.clear
    end
    def cats
      Cat.all.select{|cat| cat.owner == self}
    end
    def dogs
      Dog.all.select{|dog| dog.owner == self}
      #calls on dog array selects dog instance (owner)
    end
    def buy_cat(name)
      Cat.new(name, self)
    end
    def buy_dog(name)
      Dog.new(name, self)
    end
    def walk_dogs
      Dog.all.select{|dog| dog.mood = "happy"}
      #calls on dog array selects dog instance (mood)
    end
    def feed_cats
      Cat.all.select{|cat| cat.mood = "happy"}
    end
    def sell_pets
      pets = self.dogs + self.cats
      pets.each do |pet|
        pet.mood = "nervous"
        pet.owner = nil
      end
      #pets mood = nervous
      #owner = nil
       #pets = @owner.dog.count +  @owner.cat.count
    end
    def list_pets
     
      "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
    end

end


#Associations
#  Owner instance methods
    #cats
 # #    returnsa a collection of all the cats that belong to the owner (FAILED - 1)
    #dogs
  # #   returnsa a collection of all the dogs that belong to the owner (FAILED - 2)
    #buy_cat
   # #  can buy a cat that is an instance of the Cat class (FAILED - 3)
    ##  knows about its cats (FAILED - 4)
    #buy_dog
    ##  can buy a dog that is an instance of the Dog class (FAILED - 5)
    # # knows about its dogs (FAILED - 6)
    #walk_dogs
    #  walks the dogs which makes the dogs' moods happy (FAILED - 7)
    #feed_cats
    #  feeds cats which makes the cats' moods happy (FAILED - 8)
    #sell_pets
    #  can sell all its pets, which makes them nervous (FAILED - 9)
    #  can sell all its pets, which leaves them without an owner (FAILED - 10)
    #list_pets
    #  can list off its pets (FAILED - 11)



#Instance method
    #name
##    can have a name (FAILED - 1)
##    cannot change owner's name (FAILED - 2)
  #species
# #   initializes with species set to human (FAILED - 3)
# #   can't change its species (FAILED - 4)
  #say_species
#    can say its species (FAILED - 5)
#Class methods
#  .all returns all instances of Owner that have been created (FAILED - 6)
#  .count returns the number of owners that have been created (FAILED - 7)
#  .reset_all can reset the owners that have been created (FAILED - 8)
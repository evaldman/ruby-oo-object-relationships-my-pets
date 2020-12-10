require_relative './dog'
require_relative './cat'
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

end






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
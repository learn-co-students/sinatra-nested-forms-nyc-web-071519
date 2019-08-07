class Ship
    @@all = []
    def initialize(name, type, booty_attr)
        @name = name
        @type = type
        @booty_attr = booty_attr
        Ship.all << self
    end

    def self.all 
        @@all
    end

    def self.clear
        @@all = []
    end
end
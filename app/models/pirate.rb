class Pirate
    attr_accessor :name, :height, :weight

    @@all = []

    def initialize(name,height,weight)
        @name = name
        @height = height
        @weight = weight

        @@all << self
    end

    def self.find(name)
        @@all.find do |pirate|
            pirate.name == name
        end
    end

    def self.all
        @@all
    end

    def self.clear
        @@all.clear
    end

end
class User
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def photos
        Photo.all.select {|pic| pic.user == self}
    end

end
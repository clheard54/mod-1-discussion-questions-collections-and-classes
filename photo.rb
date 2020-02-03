class Photo
    attr_accessor :comment, :user
    @@all = []

    def initialize
        @user = user
        @@all << self
        @comments = []
    end

    def self.all
        @@all
    end

    def make_comment(comment)
        @comments << comment
    end

    def comments
        @comments
    end
   
end
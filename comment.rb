class Comment
    attr_accessor :comment, :user, :photo
    @@all = []

    def initialize(comment)
        @comment = comment
        @user = user
        @photo = photo
        @@all << self
    end

    def comment_writer
        x = Photo.all.find {|pic| pic.comment == self}
        @user = x.user
    end

    def photo_commented_on
        @photo = Photo.all.find {|pic| pic.comment == self}
    end

    def self.all
        @@all
    end
end
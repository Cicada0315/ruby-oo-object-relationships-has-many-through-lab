class Song
    @@all=[]
    attr_accessor :artist, :genre, :title
    def initialize(title, artist, genre)
        @title=title
        @artist=artist
        @genre=genre
        @@all << self
    end

    def self.all
        @@all
    end
end

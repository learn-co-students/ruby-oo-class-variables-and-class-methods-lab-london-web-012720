class Song
    attr_accessor :name, :artist, :genre

    @@total = 0

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@total += self
    end

     def self.count
       @@total
    end
end

song1 = Song.new("bella ciao", "pippo", "classic")
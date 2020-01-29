class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count +=1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
            chash = Hash.new(0) #makes new hash but empty and for implict use?
            @@genres.each {|g| chash[g] += 1}
            chash
        
        #################### wip needs ruby 2.7
        # b = @@genres.tally
        # return b
        #################### wip
    end



    def self.artist_count
        chash = Hash.new(0) #makes new hash but empty and for implict use?
            @@artists.each {|a| chash[a] += 1}
            chash
    end

end
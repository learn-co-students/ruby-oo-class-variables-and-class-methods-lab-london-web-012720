class Song
    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
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
        hash_to_return = {}
        @@genres.each do |element|
            if hash_to_return[element]
                hash_to_return[element] += 1
            else
                hash_to_return[element] = 1   
            end     
        end
        hash_to_return
    end

    def self.artist_count
        hash_to_return = {}
        @@artists.each do |element|
            if hash_to_return[element]
                hash_to_return[element] += 1
            else
                hash_to_return[element] = 1   
            end     
        end
        hash_to_return
    end
end
class Song
    @@artists = []
    @@count = 0
    @@genres = []
    attr_reader :name, :artist, :genre
    def initialize(name, artist, genre)
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
    def self.artist
        @@artists
    end
    def self.genres
        @@genres
    end
    def self.artists
        @@artists.uniq
    end
    def self.genres
        @@genres.uniq
    end
    def self.genre_count
        genre_list = {}
        @@genres.each do |genre|
            genre_list[genre] = 0 if !genre_list[genre]
            genre_list[genre] += 1
        end
        genre_list
    end
    def self.artist_count
        artist_list = {}
        @@artists.each do |artist|
            artist_list[artist] = 0 if !artist_list[artist]
            artist_list[artist] += 1
        end
        artist_list
    end
end
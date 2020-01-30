require "pry"
class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []
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


    @@genres.each_with_object(Hash.new(0)) {|name, hash| hash[name] += 1}

    #another easy way was @@genres.each_with_index.to_h

   end

   def self.artist_count
  
    new_hash = Hash.new 0

    @@artists.each do |name|
       

    new_hash[name] += 1

    end
    new_hash
   end

end


# song1 = Song.new("bella ciao", "pippo", "classic")
# song2 = Song.new("nono", "tizio", "pop")
# song3 = Song.new("bella ", "claudio", "rock")
# song4 = Song.new("ciao", "mimmo", "rap")


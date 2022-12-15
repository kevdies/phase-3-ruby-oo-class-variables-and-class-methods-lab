require "pry"

class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

#     tally → a_hashclick to toggle source
# Tallies the collection, i.e., counts the occurrences of each element. Returns a hash with the elements of the collection as keys and the corresponding counts as values.

# ["a", "b", "c", "b"].tally  #=> {"a"=>1, "b"=>2, "c"=>1}

    def self.genre_count
        @@genres.tally
    end

    # def self.genre_count
    #     genre_count = {}
    #     # need to set the keys as the genre name
    #     #each key genre points to a value that is the number of songs that genre has
    #     #
    #     # if genre is in the @@genres array then genre_count index/key??
    #     # genre_count[genre] = if its there add 1 for the count += 1
    #     # if its not there genre_count[genre] = 1
    #     # return??? genre_count
    #     @@genres.each do |genre|
    #         if genre_count[genre]
    #             genre_count[genre] += 1
    #         else
    #             genre_count[genre] = 1

    #         end
    #     end
    #     genre_count
    # end

    def self.artist_count
        @@artists.tally
    end

end
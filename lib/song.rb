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

    def self.genre_count
        genre_count = {}
        # need to set the keys as the genre name
        #each key genre points to a value that is the number of songs that genre has
        #
        # if genre is in the @@genres array then genre_count index/key??
        # genre_count[genre] = if its there add 1 for the count += 1
        # if its not there genre_count[genre] = 1
        # return??? genre_count
        @@genres.each do |genre|
            if genre_count[genre]
                genre_count[genre] += 1
            else
                genre_count[genre] = 1

            end
        end
        genre_count
    end



end
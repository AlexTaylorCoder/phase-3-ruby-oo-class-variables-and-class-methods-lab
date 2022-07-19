class Song
    attr_accessor :name
    attr_accessor :artist
    attr_accessor :genre

    @@count = 0
    @@artists = []
    @@genres = []
    def initialize name, artist, genre
        @@count += 1 
        @@artists.push(artist)
        @@genres.push(genre)
        @name = name
        @artist = artist
        @genre = genre
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
    def self.artist_count
        @@artists.tally
    end
    def self.genre_count
        @@genres.tally
    end
end
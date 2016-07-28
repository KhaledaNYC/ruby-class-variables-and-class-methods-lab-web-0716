class Song

  attr_accessor :name,:artist,:genre

      @@count = 0
      @@genres = []
      @@artists = []
      @@genre_hash = {}
      @@artist_hash = {}
    def initialize(name,artist,genre)
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

    def self.name
      self.name
    end

    def self.genres
      @@genres.uniq!
    end

    def self.artists
      @@artists.uniq!
    end

    def self.artist_count
      @@artists.each do |name|
        if @@artist_hash[name] ||= 0
          @@artist_hash[name] += 1
        end
      end
      @@artist_hash
    end

    def self.genre_count
      @@genres.each do |type|
        if @@genre_hash[type] ||= 0
          @@genre_hash[type] += 1
        end
      end
      @@genre_hash
    end

end

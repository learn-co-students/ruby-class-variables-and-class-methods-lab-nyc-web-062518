class Song

  attr_accessor :name
  attr_accessor :artist
  attr_accessor :genre

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
    output = []
    @@genres.each do |genre|
      if output.include?(genre) == false
        output << genre
      end
    end
    output
  end

  def self.artists
    output = []
    @@artists.each do |artist|
      if output.include?(artist) == false
        output << artist
      end
    end
    output
  end

  def self.genre_count
    output = {}
    @@genres.each do |genre|
      if output[genre]
        output[genre] += 1
      else
        output[genre] = 1
      end
    end
    output
  end

  def self.artist_count
    output = {}
    @@artists.each do |artist|
      if output[artist]
        output[artist] += 1
      else
        output[artist] = 1
      end
    end
    output
  end

end

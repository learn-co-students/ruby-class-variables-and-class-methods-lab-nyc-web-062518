class Song
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end

  attr_accessor :name, :artist, :genre
  
  def self.class_variable_get(classVariable)
    if classVariable == :@@count
      @@count
    elsif classVariable == :@@artists
      @@artists
    else 
      @@genres
    end
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
    genreSongCountHash = {}
    @@genres.uniq.each do |genre|
      genreCount = @@genres.count(genre)
      genreSongCountHash[genre] = genreCount
    end
    return genreSongCountHash
  end
  
  def self.artist_count
    artistSongCountHash = {}
    @@artists.uniq.each do |artist|
      songCount = @@artists.count(artist)
      artistSongCountHash[artist] = songCount
    end
    return artistSongCountHash
  end
end

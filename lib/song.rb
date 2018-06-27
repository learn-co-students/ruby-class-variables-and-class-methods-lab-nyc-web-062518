require 'pry'

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
    count = {}
    @@genres.each do |uniqe_genre|
      count[uniqe_genre] = @@genres.select { |genre| genre == uniqe_genre }.length
    end
    count
  end

  def self.artist_count
    count = {}
    self.artists.each do |uniqe_artist|
      count[uniqe_artist] = @@artists.select { |artist| artist == uniqe_artist }.length
    end
    count
  end

end

# alone = Song.new("Alone", "Daniel Rein", "rock")
#
# eulalie = Song.new("Eulalie", "Yoav Shemesh", "Arabic")
#
# annabel_lee = Song.new("Annabel Lee", "Daniel Rein", "Arabic")
#
# the_bells = Song.new("The Bells", "Yoav Shemesh", "musical")
#
# a_dream_within_a_dream = Song.new("A Dream Within A Dream", "Daniel Rein", "rock")
#
# the_bridal_ballad = Song.new("The Bridal Ballad", "Daniel Rein", "rock")

# binding.pry
# Song.genre_count

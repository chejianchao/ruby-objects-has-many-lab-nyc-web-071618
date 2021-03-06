

class Artist
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []

    @@all << self
  end

  def add_song(song)
    songs << song
    song.artist = self
    song
  end

  def add_song_by_name(name)
    song = Song.new(name)
    self.add_song(song)
  end
  def self.all
    @@all
  end
  def self.song_count
    count = 0
    self.all.each{|artist|
      count += artist.songs.size
    }
    count
  end
end

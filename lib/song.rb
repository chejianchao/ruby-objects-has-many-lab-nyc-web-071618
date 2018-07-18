

class Song
  attr_accessor :name, :title, :artist
  @@all = []
  def initialize(name)
    @name =name
    @@all << self
  end

  def artist_name
    return nil if @artist == nil
    @artist.name
  end
end

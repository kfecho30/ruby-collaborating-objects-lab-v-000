class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    song = Song.new(file.split(" - ")[1])
    song.artist = Artist.find_or_create_by_name(file.split(" - ")[0])
    song
  end

  def artist_name=(artist_name)
    a = Artist.find_or_create_by_name(artist_name)
    a.add_song(self)
    self.artist = a
  end
end

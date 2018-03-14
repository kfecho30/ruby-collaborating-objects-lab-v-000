class Artist
  attr_accessor :name
  @songs = []
  @@all = []
  def initialize(name)
    @name = name
  end
  def songs
    @songs
  end
  def add_song(song)
    @songs << song
  end
  def print_songs
    @songs.each do |song|
      print song
    end
  end
  def self.find_or_create_by_name(name)
    Artist.all.name.include?(name) ? "x" :Artist.new(name)
  end
  def save
    @@all << self
  end
  def self.all
    @@all
  end

end

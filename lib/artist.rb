class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end
  def songs
    @songs
  end
  def add_song(song)
    @songs << song
  end
  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
  def self.find_or_create_by_name(name)
    Artist.all.each {|artist| }
  end
  def save
    @@all << self
  end
  def self.all
    @@all
  end

end

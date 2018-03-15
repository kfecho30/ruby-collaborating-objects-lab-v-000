class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end
  def files
  end
  def import
    list = Dir["/#{path}/**/*.mp3"]
    list
  end

end

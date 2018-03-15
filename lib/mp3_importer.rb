class MP3Importer
  attr_accessor :path, :list

  def initialize(path)
    @path = path
  end
  def files
    @list = Dir["/#{path}/**/*.mp3"]
  end
  def import
  end

end

require 'pry'
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  # def files
  #   Dir.entries(path).select do |file|
  #      file.include?('mp3')
  #    end
  # end

  def files
  @files ||= Dir.glob("#{path}/*.mp3").collect do |f|
     f.gsub("#{path}/", "")
     binding.pry
   end
end


  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end


end

require 'pry'
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  # def self.new_by_filename(file)
  #   info = file.split(' - ')
  #   song = self.new(info[1])
  #   song.artist_name = info[0]
  #   song
  # end

  def self.new_by_filename(filename)
   artist, song = filename.split(" - ")
   binding.pry
   new_song = self.new(song)
   new_song.artist_name = artist
   new_song
 end

  def artist_name=(artist_name)
    artist = Artist.find_or_create_by_name(artist_name)
    self.artist = artist
    artist.add_song(self)
  end



end

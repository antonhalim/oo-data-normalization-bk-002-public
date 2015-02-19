require 'pry'
class Song
  attr_accessor :title, :artist

  def serialize
    @ser_title = @title.gsub(/\s/, "_").downcase
    file = Tempfile.new(["#{@ser_title}", ".txt"], 'tmp')
    file.write("#{@artist.name} - #{@title}")
    file.close
    binding.pry
  end



end

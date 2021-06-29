class Song
  attr_accessor :name, :artist, :duration

  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
  end

  def to_s
    "Song : #{@name}--#{@artist} (#{@duration})"
  end
end

Song.play

class KaraokeSong < Song
  def initialize(name, artist, duration, lyrics)
    super(name, artist, duration)
    @lyrics = lyrics
  end

  def to_s
    super + " [@#{@lyrics}]"
  end
end

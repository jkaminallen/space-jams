class Album
  attr_reader :id, :title, :artists, :tracks

  def initialize(id, title, artists)
    @id = id
    @title = title
    @artists = artists
    @tracks = []
  end

  def duration_min
    sum = 0
    tracks.each do |track|
      sum += track[:duration_ms].to_i
    end
    (sum / 60000).round(2)
  end

  def summary
    album_title = "\nName: #{title} \n"
    artist = "Artist(s): #{artists} \n"
    track = "Tracks: \n"
    tracks.each do |track|
      sum += x[:duration_ms].to_i
    end
    duration = "Duration (min.): #{duration_min} \n"
    return album_title + artist + duration + track
  end
end

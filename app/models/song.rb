class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    drake = Artist.new
    drake.name = "Drake"
    drake.save
    this_song = self
    this_song.artist = drake
    this_song.save
    this_song.artist
  end
end

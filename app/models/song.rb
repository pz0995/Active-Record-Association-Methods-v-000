class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.songs.genres.first
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    songs.find_by_sql("SELECT * FROM songs WHERE artist = 'Drake'")
  end
end

require 'pry'

class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    genres.count
  end

  def artist_count
    # return the number of artists associated with the genre
    return genres.artists.count
  end

  def all_artist_names(name)
    # return an array of strings containing every musician's name
    artists.each do |artst|
      artst = artists.name
  end
end
end

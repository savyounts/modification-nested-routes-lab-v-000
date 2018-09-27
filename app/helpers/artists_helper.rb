module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  def artist_select
    link_to song.artist.name, song_artist_path(song, song.artist) if !song.artist.nil?
  end
end

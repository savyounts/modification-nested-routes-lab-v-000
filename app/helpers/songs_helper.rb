module SongsHelper

  def artist_id_field(song)
    if song.artist.nil?
      f.collection_select :song_artist_id, Artist.all, :id, :name
    else
      f.hidden_field :aritst_id
    end
  end
end

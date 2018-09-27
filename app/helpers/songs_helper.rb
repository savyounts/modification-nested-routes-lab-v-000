module SongsHelper

  def artist_id_field(song)
    if song.artist.nil?
      collection_select :song_artist_id, Artist.all, :id, :name
    else
      hidden_field :aritst_id
    end
  end
end

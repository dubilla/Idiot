class SongsController < ApplicationController

  def index
    @artist = RapGenius::Artist.find(params[:artist_id])

    respond_to do |format|
      format.json { render json: { artist: @artist.document["response"]["artist"], songs: @artist.songs} }
    end
  end

end

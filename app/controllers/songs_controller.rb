class SongsController < ApplicationController

  def index
    @artist = RapGenius::Artist.find(params[:artist_id]).songs(page: params[:page])

    respond_to do |format|
      format.json { render json: @artist }
    end
  end

end

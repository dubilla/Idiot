class ArtistsController < ApplicationController

  def show
    @artist = RapGenius::Artist.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @artist }
    end
  end

end

class ArtistsController < ApplicationController

  def show
    @artist = OpenStruct.new(RapGenius::Artist.find(params[:id]).document["response"]["artist"])

    respond_to do |format|
      format.html
      format.json { render json: @artist }
    end
  end

end

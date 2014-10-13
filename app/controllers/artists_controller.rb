class ArtistsController < ApplicationController

  def index
  end

  def show
    @artist = OpenStruct.new(RapGenius::Artist.find(params[:id]).document["response"]["artist"])

    respond_to do |format|
      format.html
      format.json { render json: @artist }
    end
  end

end

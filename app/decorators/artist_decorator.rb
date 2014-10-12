class ArtistDecorator < Draper::Decorator

  delegate_all

  def data
    document["reponse"]["artist"]
  end

end

class Artist < ActiveRecord::Base

  def name
    RapGenius::Artist(name).songs
  end

  private

  def data
    document["reponse"]["artist"]
  end

end

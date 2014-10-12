class Song < ActiveRecord::Base

  def songs
    RapGenius::Artist(name).songs
  end

end

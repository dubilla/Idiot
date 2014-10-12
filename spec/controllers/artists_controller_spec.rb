require 'spec_helper'
require 'rails_helper'

describe ArtistsController do


  describe '#show' do

    before do
      VCR.use_cassette('artists_show', record: :new_episodes) do
        visit 'artists/2'
      end
    end

    it 'should return 200' do
      expect(response.status).to eq(200)
    end

  end

end

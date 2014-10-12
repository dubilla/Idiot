require 'spec_helper'
require 'rails_helper'

describe 'the hero element' do

  before do
    VCR.use_cassette('artists_requests_show', record: :new_episodes) do
      visit 'artists/2'
    end
  end

  describe 'when a budget exists' do

    it 'should have a title' do
      expect(page).to have_selector '.hero h1'
    end

    it 'should have instructions' do
      expect(page).to have_selector '.instructions'
    end
  end

end

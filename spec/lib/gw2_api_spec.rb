# frozen_string_literal: true

RSpec.describe 'GW2API' do
  it 'calls the GW2 API' do
    VCR.use_cassette('gw2api') do
      GW2API.new.call
    end
  end
end

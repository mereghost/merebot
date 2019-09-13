# frozen_string_literal: true

RSpec.describe Merebot::GW2API do
  it 'calls the GW2 API' do
    VCR.use_cassette('gw2api') do
      described_class.new.call
    end
  end
end

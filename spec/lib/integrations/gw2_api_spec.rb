# frozen_string_literal: true

RSpec.describe Merebot::GuildWars2::API do
  it 'calls the GW2 API' do
    VCR.use_cassette('gw2api') do
      expect { described_class.new.call }.to_not raise_error
    end
  end

  it 'returns a list of Guildwars2::Users' do
    VCR.use_cassette('gw2api') do
      expect(described_class.new.call).to all(be_a(Merebot::GuildWars2::User))
    end
  end
end

# frozen_string_literal: true

RSpec.describe Merebot::Discord do
  let(:role) { instance_double(Discordrb::Role, name: 'Great Poobah') }

  let(:user) do
    instance_double(Discordrb::Member, id: '1', username: 'bob', nick: nil, roles: [role])
  end

  let(:server) { double(Discordrb::Server, members: [user]) }
  subject(:discord) { described_class.new(server) }

  it '#members return a list of discord users' do
    expect(discord.members).to all(be_a(Merebot::Discord::User))
  end
end

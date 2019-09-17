# frozen_string_literal: true

module Merebot
  class Discord
    def initialize(server)
      @server = server
    end

    def members
      @server.members.map do |member|
        Member.new(id: member.id,
                   username: member.username,
                   nick: member.nick,
                   roles: member.roles.map(&:name))
      end
    end
  end
end

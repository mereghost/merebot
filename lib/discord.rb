# frozen_string_literal: true

module Merebot
  class Discord
    class User
      def initialize(id:, username:, nick:, roles:)
        @id = id
        @username = username
        @nick = nick
        @roles = roles
      end
    end

    def initialize(server)
      @server = server
    end

    def members
      @server.members.map do |member|
        User.new(id: member.id,
                 username: member.username,
                 nick: member.nick,
                 roles: member.roles.map(&:name))
      end
    end
  end
end

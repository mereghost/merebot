# frozen_string_literal: true

module Merebot
  class Discord
    class Member
      def initialize(id:, username:, nick:, roles:)
        @id = id
        @username = username
        @nick = nick
        @roles = roles
      end
    end
  end
end

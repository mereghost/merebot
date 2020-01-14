# frozen_string_literal: true

require 'time'

module Merebot
  module GuildWars2
    class User
      attr_reader :rank, :joined

      def initialize(name:, joined:, rank:)
        @name = name
        @joined = Time.iso8601(joined || '2012-01-01T00:00:00Z')
        @rank = rank
        freeze
      end
    end
  end
end

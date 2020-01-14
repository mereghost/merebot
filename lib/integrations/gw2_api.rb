# frozen_string_literal: true

module Merebot
  module GuildWars2
    class API
      URL = 'https://api.guildwars2.com'

      def initialize
        @connection = Faraday.new(URL)
      end

      def call
        raise Merebot::NetworkError, 'GW2 API returned an error' unless response.success?

        member_list = Oj.load(response.body, symbol_keys: true)
        member_list.map { |member| User.new(member) }
      end

      private

      def endpoint
        "/v2/guild/#{ENV['GUILD_ID']}/members"
      end

      def response
        @connection.get(endpoint) do |req|
          req.headers['Accepts'] = 'application/json'
          req.headers['Authorization'] = "Bearer #{ENV['API_KEY']}"
        end
      end
    end
  end
end

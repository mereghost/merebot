# frozen_string_literal: true

class GW2API
  URL = 'https://api.guildwars2.com'

  def initialize
    @connection = Faraday.new(URL)
  end

  def call
    return Oj.load(response.body) if response.success?

    raise Merebot::NetworkError, 'GW2 API returned an error'
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

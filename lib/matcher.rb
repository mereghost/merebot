# frozen_string_literal: true

module Merebot
  class Matcher
    def initialize(gw2:, discord:)
      @gw2 = gw2
      @discord = discord
    end

    def call
      # take in all gw2 users.
      # Preprocess input
      # Match discord user display_name against gw2 users
      # do a second pass calculating JaroWrinkler similarity
      { found: [], not_found: [] }
    end
  end
end

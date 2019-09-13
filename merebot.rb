# frozen_string_literal: true

require 'oj'
require 'faraday'
require 'dotenv'
require 'discordrb'
Dotenv.load

require_relative 'lib/errors'
require_relative 'lib/discord'
require_relative 'lib/gw2_api'

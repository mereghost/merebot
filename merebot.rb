# frozen_string_literal: true

require 'oj'
require 'faraday'
require 'dotenv'
require 'discordrb'
Dotenv.load

require_relative 'lib/errors'
require_relative 'lib/entities/member'
require_relative 'lib/entities/user'
require_relative 'lib/integrations/discord'
require_relative 'lib/integrations/gw2_api'

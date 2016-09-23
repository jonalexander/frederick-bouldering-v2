require_relative 'boot'
require 'rails/all'
require 'dotenv'
Dotenv.load


Bundler.require(*Rails.groups)

module FredBouldering
  class Application < Rails::Application

  end
end

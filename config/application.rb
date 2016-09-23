require_relative 'boot'
require 'rails/all'
require 'dotenv-rails'
Dotenv.load


Bundler.require(*Rails.groups)

module FredBouldering
  class Application < Rails::Application

  end
end

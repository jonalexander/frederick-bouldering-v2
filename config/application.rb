require_relative 'boot'
require 'rails/all'

Bundler.require(*Rails.groups)

module FredBouldering
  class Application < Rails::Application

  end
end

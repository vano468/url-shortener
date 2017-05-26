require 'dry/web/roda/application'
require_relative 'container'

module UrlShortener
  class Application < Dry::Web::Roda::Application
    configure do |config|
      config.container = Container
      config.routes = 'web/routes'.freeze
    end

    opts[:root] = Pathname(__FILE__).join('../..').realpath.dirname

    plugin :json

    load_routes!
  end
end

require 'dry/web/umbrella'
require_relative 'settings'

module UrlShortener
  class Container < Dry::Web::Umbrella
    configure do
      config.name = :url_shortener
      config.default_namespace = 'url_shortener'
      config.settings_loader = UrlShortener::Settings
      config.listeners = true

      config.auto_register = %w[
        lib/url_shortener
      ]
    end

    load_paths! 'lib', 'system'

    def self.settings
      config.settings
    end
  end
end

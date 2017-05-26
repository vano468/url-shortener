module UrlShortener
  module Urls
    module Services
      class Shortify
        KEY_LENGTH = 6

        include Import['persistence.repositories.urls']

        def call(input)
          urls.create(key: generate_key, url: input[:longUrl])
        end

        private

        def generate_key
          hex_length = KEY_LENGTH / 2.0
          SecureRandom.hex(hex_length.ceil)
        end
      end
    end
  end
end
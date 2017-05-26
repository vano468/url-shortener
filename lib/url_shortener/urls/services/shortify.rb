module UrlShortener
  module Urls
    module Services
      class Shortify
        include Import['persistence.repositories.urls']

        KEY_LENGTH = 6

        def call(input)
          urls.create(key: generate_key, url: input[:longUrl])
        rescue ROM::SQL::UniqueConstraintError
          retry
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

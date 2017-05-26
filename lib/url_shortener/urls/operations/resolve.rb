require 'url_shortener/import'
require 'url_shortener/matcher'

module UrlShortener
  module Urls
    module Operations
      class Resolve
        include Import['persistence.repositories.urls']
        include Matcher

        def call(key)
          Dry::Monads::Right(urls.find!(key))
        rescue ROM::TupleCountMismatchError => e
          Dry::Monads::Left(e)
        end
      end
    end
  end
end

require 'url_shortener/repository'

module UrlShortener
  module Persistence
    module Repositories
      class Urls < UrlShortener::Repository[:urls]
        commands :create

        def find(key)
          urls.by_key(key).one
        end
      end
    end
  end
end

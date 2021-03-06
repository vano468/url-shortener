require 'url_shortener/import'
require 'url_shortener/matcher'

module UrlShortener
  module Urls
    module Operations
      class Create
        include Import['urls.services.shortify']
        include Matcher

        def call(params)
          validation = Validations::Form.(params)

          if validation.success?
            Dry::Monads::Right(shortify.(validation.output))
          else
            Dry::Monads::Left(validation.errors)
          end
        end
      end
    end
  end
end

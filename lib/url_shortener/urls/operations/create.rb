require 'url_shortener/import'
require 'url_shortener/matcher'

module UrlShortener
  module Urls
    module Operations
      class Create
        include Matcher

        def call(attributes)
          validation = Validations::Form.(attributes)

          if validation.success?
            Dry::Monads::Right('xxxxxxxxxxxxxx')
          else
            Dry::Monads::Left(validation.errors)
          end
        end
      end
    end
  end
end

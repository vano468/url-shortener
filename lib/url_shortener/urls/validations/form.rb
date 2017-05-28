require 'dry-validation'
require 'uri'

module UrlShortener
  module Urls
    module Validations
      Form = Dry::Validation.Form do
        configure do
          config.messages_file = Container.root.join('config/locales/validation.yml')

          def uri?(input)
            !URI.regexp(%w(http https)).match(input).nil?
          end
        end

        required(:longUrl).filled(:uri?)
      end
    end
  end
end

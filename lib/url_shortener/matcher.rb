require 'dry/monads'
require 'dry/matcher'
require 'dry/matcher/either_matcher'

module UrlShortener
  Matcher = Dry::Matcher.for(:call, with: Dry::Matcher::EitherMatcher)
end

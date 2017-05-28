if %w(development test).include?(ENV['RACK_ENV'])
  require 'byebug'
  require 'pry'
end

require_relative 'url_shortener/container'

UrlShortener::Container.finalize!

require 'url_shortener/application'

require 'url_shortener/transactions'
UrlShortener::Container.require 'transactions/**/*.rb'

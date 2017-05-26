require 'byebug' if ENV['RACK_ENV'] == 'development'
require 'pry' if ENV['RACK_ENV'] == 'development'

require_relative 'url_shortener/container'

UrlShortener::Container.finalize!

require 'url_shortener/application'

require 'url_shortener/transactions'
UrlShortener::Container.require 'transactions/**/*.rb'

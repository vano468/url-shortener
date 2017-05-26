require 'rom-repository'
require 'url_shortener/container'
require 'url_shortener/import'

UrlShortener::Container.boot! :rom

module UrlShortener
  class Repository < ROM::Repository::Root
    include UrlShortener::Import.args['persistence.rom']
  end
end

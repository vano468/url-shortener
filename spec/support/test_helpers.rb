module TestHelpers
  module_function

  def app
    UrlShortener::Application.app
  end

  def rom
    UrlShortener::Container['persistence.rom']
  end

  def urls_repo
    UrlShortener::Container['persistence.repositories.urls']
  end

  def db_connection
    rom.gateways[:default].connection
  end
end

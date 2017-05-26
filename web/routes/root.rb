class UrlShortener::Application
  route do |r|
    r.post do
      { hello: :world }
    end
  end
end

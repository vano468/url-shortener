class UrlShortener::Application
  route do |r|
    r.post do
      r.resolve 'urls.operations.create' do |create|
        create.(r.params) do |m|
          m.success { |v| { url: "#{request.base_url}/#{v.key}" } }
          m.failure { |e| { errors: e } }
        end
      end
    end
  end
end

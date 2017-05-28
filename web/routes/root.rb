class UrlShortener::Application
  route do |r|
    r.post '' do
      r.resolve 'urls.operations.create' do |create|
        create.(r.params) do |m|
          m.success { |v| { url: "#{request.base_url}/#{v.key}" } }
          m.failure { |e| response.status = 422; { errors: e } }
        end
      end
    end

    r.get :url do |key|
      r.resolve 'urls.operations.resolve' do |resolve|
        resolve.(key) do |m|
          m.success { |v| r.redirect v.url }
          m.failure { response.status = 404 }
        end
      end
    end
  end
end
